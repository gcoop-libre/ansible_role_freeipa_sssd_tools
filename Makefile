SHELL:=/bin/bash

PLAYBOOK      ?= $$([[ -e test.yml ]] && echo 'test.yml' || echo 'main.yml')
ROLE_NAME     ?= $$([[ -e meta/main.yml ]] && awk '/role_name:/ {print $$2}' meta/main.yml)
ROLE_COMPANY  ?= $$([[ -e meta/main.yml ]] && awk '/company:/   {print $$2}' meta/main.yml)
ROLE_OWNER    ?= $$([[ "$(ROLE_COMPANY)" = 'gcoop' ]] && echo gcoop-libre.$(ROLE_NAME))
DEBUG         ?= -vv
ENV           ?= master
SUDO          ?=
GIT_TYPE      ?= $$(git config --get remote.origin.url | grep -o http)
GIT_HTTP      ?= $$(git config --get remote.origin.url | grep http | rev | cut -d/ -f2- | rev)
GIT_HOST      ?= $$(git config --get remote.origin.url | cut -d: -f1)
GIT_BASE      ?= $$(git config --get remote.origin.url | cut -d: -f2 | cut -d/ -f2)
GIT_URL       ?= $$([[ "$(GIT_TYPE)" = 'http' ]] && echo $(GIT_HTTP) || echo $(GIT_HOST):/$(GIT_BASE))
AWX_ENV               ?= develop
AWX_GITLAB_USER       ?= awx_gitlab_test
AWX_GITLAB_JOB_LAUNCH ?= undefined_job_template
AWX_GITLAB_JOB_LIMIT  ?= undefined_limit
INVENTORY     ?= inventory
GROUP         ?= ipa
HOSTS_SUFFIX  ?= -$(GROUP)
EXTRA_PREFIX  ?= $(GROUP)_
HOSTS         ?= $(INVENTORY)/hosts$(HOSTS_SUFFIX)
VARS          ?= $(INVENTORY)/group_vars/$(EXTRA_PREFIX)extra_vars.yml
EXTRA         ?= $$([[ -e "$(VARS)" ]] && echo '-e @$(VARS)' )
LIMIT         ?= lab
HOSTS_LIMIT   ?= $$([[ -z "$(LIMIT)" ]] || echo '--limit $(LIMIT)' )
INVENTORY_DIR ?= $$([[ -d tests/roles ]] && echo "tests/$(INVENTORY)" || echo "$(INVENTORY)")
VAULT_ID      ?= dev

playbook: requirements inventory_env
	[[ -d 'tests' ]] && cd tests; ansible-playbook $(DEBUG) -i $(HOSTS) $(HOSTS_LIMIT) $(SUDO) $(EXTRA) $(PLAYBOOK)

playbook_only:
	[[ -d 'tests' ]] && cd tests; ansible-playbook $(DEBUG) -i $(HOSTS) $(HOSTS_LIMIT) $(SUDO) $(EXTRA) $(PLAYBOOK)

requirements:
	[[ -d 'tests/roles' ]] && cd tests;[[ -d 'roles' ]] && cd roles; [[ -e 'requirements.yml' ]] && ansible-galaxy install -r requirements.yml -p . --force || exit 0

inventory:
	[[ -d $(INVENTORY_DIR) ]] || git clone $(GIT_URL)/$(INVENTORY) $(INVENTORY_DIR)

inventory_env: inventory
	cd $(INVENTORY_DIR) && git checkout $(ENV);git pull;git log -1

pre-commit:
	pre-commit install

awx_config:
	./awx-config.sh $(AWX_ENV)

awx_version: inventory_env awx_config
	awx-cli version

awx_user:
	awx-cli user get --username $(AWX_GITLAB_USER)

awx_job_launch:
	awx-cli job launch -J $(AWX_GITLAB_JOB_LAUNCH) --monitor --limit $(AWX_GITLAB_JOB_LIMIT)

lint:
	[[ -d 'tests' ]] && cd tests; find . -maxdepth 1 -type f -iname '*.yml' | xargs ansible-lint $(DEBUG)

syntax:
	[[ -d 'tests' ]] && cd tests; find . -maxdepth 1 -type f -iname '*.yml' | xargs ansible-playbook $(DEBUG) -i $(HOSTS) --syntax-check

vault:
	./vault_identity_list.sh $(VAULT_ID)

plugins/lookup/pass/lookup_plugins/pass.py:
	mkdir -p tests/plugins/lookup
	cd tests && git clone $(GIT_URL)/ansible_lookup_plugin_pass.git plugins/lookup/pass

dependencies: plugins/lookup/pass/lookup_plugins/pass.py

changelog:
	git-tag-changelog

readme:
	NO_TAG_LINK=1 git-tag-readme
