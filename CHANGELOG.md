# [_ANSIBLE_ROLE_FREEIPA_SSSD_TOOLS CHANGELOG_](https://gitlab.com/gcoop-libre/ansible_role_freeipa_sssd_tools)

 - this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html)

## [`Unreleased - 2024-01-29`](https://gitlab.com/gcoop-libre/ansible_role_freeipa_sssd_tools/-/compare/v0.9.3...develop)


## [`v0.9.3 - 2024-01-29`](https://gitlab.com/gcoop-libre/ansible_role_freeipa_sssd_tools/-/compare/v0.9.2...v0.9.3) _get dirsrv status from ansible_facts to start dirsrv service and restart sssd when is dirsrv is stopped and add task to fail when dirsrv service is STOPPED at end of playbook_

### `CHANGELOG`

- update Unreleased, add v0.9.2 and v0.9.1

### `README`

- add table with useful playbooks in tests directory
- update .readme-footer to generate README.md with git-tag-readme including Tags Summary
- update README.md generated with git-tag-readme including Tags Summary

### `testing/start`

- add task to fail when dirsrv service is STOPPED at end of playbook

### `tests/start`

- remove invalid line in task to restart SSSD
- add task to populate service facts after restart SSSD
- add task to restart SSSD when freeipa_sssd_tools_service_sssd_restart add freeipa_sssd_tools_service_dirsrv_start are enabled
- enable freeipa_sssd_tools_service_sssd_restart when dirsrv is STOPPED
- add task to (populate service facts after start dirsrv
- add task to start dirsrv when freeipa_sssd_tools_service_dirsrv_start is enabled
- add task to enable freeipa_sssd_tools_service_dirsrv_start when dirsrv is STOPPED

## [`v0.9.2 - 2023-11-30`](https://gitlab.com/gcoop-libre/ansible_role_freeipa_sssd_tools/-/compare/v0.9.1...v0.9.2) _get httpd status from ansible_facts to start httpd service when is stopped, improve tasks names and debug conditionals_

### `CHANGELOG`

- update Unreleased, add v0.9.0

### `Makefile`

- add rule changelog for dynamic generate CHANGELOG.md using git-tag-changelog
- add rule readme for dynamic generate README.md using git-tag-readme with Tags Summary section

### `README`

- update README.md generated with git-tag-readme including Tags Summary
- add .readme-footer to use with git-tag-readme
- add .readme-header to use with git-tag-readme

### `tests/start`

- show last lines of httpd error log when freeipa_sssd_tools_service_httpd_start is enabled
- fix role name in tasks of populate service facts in the beginning and the end of playbook
- add task to populate service facts in the end of playbook
- clarify task name to populate service facts in the beginning of playbook
- add unknown state to enable freeipa_sssd_tools_service_httpd_start when httpd is STOPPED
- add freeipa_sssd_tools_service_httpd_start is defined in conditional of populate service facts after start httpd
- populate service facts after start httpd
- start httpd when freeipa_sssd_tools_service_httpd_start is true
- define freeipa_sssd_tools_service_httpd_start when httpd is STOPPED
- populate service facts after stopping SSSD when is required
- show last lines of httpd error log after start httpd
- define freeipa_sssd_tools_httpd_log_error when is undefined
- start httpd service when is stopped or inactive
- add httpd.service to debug conditionals (I|II|III)

## [`v0.9.1 - 2023-08-08`](https://gitlab.com/gcoop-libre/ansible_role_freeipa_sssd_tools/-/compare/v0.9.0...v0.9.1) _get krb5kdc status from ipactl status sdtout and get SubState property from systemctl to start krb5kdc service when krb5kdc is STOPPED/dead to mitigate unknown state from ansible_facts_

- tests/start: rename freeipa_sssd_tools_ipactl_status_krb5kdc_up with freeipa_sssd_tools_systemctl_status_krb5kdc_up
- tests/start: use status of krb5kdc from sysmtemctl as conditional to ensure SSSD is started when IPA is running
- tests/start: get SubState property of krb5kdc from systemctl after start krb5kdc task
- tests/start: define freeipa_sssd_tools_ipactl_status_krb5kdc_up as SubState=running
- tests/start: get krb5kdc status from ipactl status sdtout and start krb5kdc service when krb5kdc is STOPPED

## [`v0.9.0 - 2023-07-20`](https://gitlab.com/gcoop-libre/ansible_role_freeipa_sssd_tools/-/compare/v0.8.0...v0.9.0) _add playbook log.yml to get, process and view synchronization logs of the time range of a specific day_

### `CHANGELOG`

- update ChangeLog, add v0.5.2, v0.5.3 and Unreleased (2023-06-06)
- update ChangeLog from v0.5.0 to v0.8.0

### `default/main`

- enable freeipa_sssd_tools_log_err_view to view SynLog error

### `defaults/main`

- enable freeipa_sssd_tools_log_rpt_log_view to view generated SynLog error report in Markdown
- enable freeipa_sssd_tools_log_rpt_log to generate SynLog error report
- fix minor identatation reported by yamllint when define freeipa_sssd_tools_logrotate_ipa_sss_syn
- enable freeipa_sssd_tools_rpt_err and freeipa_sssd_tools_rpt_err_view
- enable filter SynLog with at least one sync error
- add freeipa_sssd_tools_sssd_cache_backup for SSSD cache backup queries
- add quotes to ensure strings to freeipa_sssd_tools_log_xend and freeipa_sssd_tools_log_xstart
- define freeipa_sssd_tools_log_xstart and freeipa_sssd_tools_log_xend for process logs with 07:00 and 19:00 as defaults
- define freeipa_sssd_tools_log_separator with '-' as default
- define freeipa_sssd_tools_date with current date as default (YYYY-MM-DD)

### `Makefile`

- show last commit after git pull in inventory_env rule

### `tasks/log-facts`

- replace variable prefix freeipa_sssd_tools_log_log with freeipa_sssd_tools_rpt_log
- define freeipa_sssd_tools_rpt_err_cmd to generate report of records with at least one sync error
- rename freeipa_sssd_tools_log_err_md as freeipa_sssd_tools_rpt_err
- define freeipa_sssd_tools_log_err_md after define freeipa_sssd_tools_log_err_log
- fix identation when define freeipa_sssd_tools_log_err_md
- define freeipa_sssd_tools_log_err_md to save report of records with at least one sync error
- explicitly specify the output log file as the third parameter when define freeipa_sssd_tools_log_err_cmd
- define freeipa_sssd_tools_log_err_log to save records with at least one sync error
- define freeipa_sssd_tools_log_err_cmd to run ipa-sss-err for filter SynLog with at least one sync error
- define freeipa_sssd_tools_log_log_md
- replace ipa-sss-usr with ipa-sss-log when define freeipa_sssd_tools_log_dat_cmd
- replace ipa-sss-usr with ipa-sss-dat when define freeipa_sssd_tools_log_dat_cmd
- replace ipa-sss-usr with ipa-sss-exp when define freeipa_sssd_tools_log_exp_cmd
- refactor use freeipa_sssd_tools_log_date only when is not empty, use freeipa_sssd_tools_var_date with now as default
- replace multiline with oneline when define freeipa_sssd_tools_log_date
- define freeipa_sssd_tools_log_name before define freeipa_sssd_tools_log_date
- replace basename filter with split when define freeipa_sssd_tools_log_date
- ensure freeipa_sssd_tools_date has value from date test
- ensure freeipa_sssd_tools_date has value (default now)
- test freeipa_sssd_tools_date and fail when is invalid
- fix typo, replace ipa-sss-usr with ipa-sss-nsy in freeipa_sssd_tools_log_nsy_cmd
- join multiple lines by removing spaces by defining freeipa_sssd_tools_log_date and using the base name of the original log file
- define variables for process all logs

### `tasks/log-process`

- replace variable prefix freeipa_sssd_tools_log_log with freeipa_sssd_tools_rpt_log and fix conditionals when generate SynLog report
- replace conditionals prefix freeipa_sssd_tools_log_err with freeipa_sssd_tools_rpt_err
- add task to execute ipa-sss-log with log with records with at least one sync error
- filter SynLog with at least one sync error when freeipa_sssd_tools_log_err is enabled
- fix task 'generate SynLog report for one day', execute freeipa_sssd_tools_log_log_cmd
- add task for generate SynLog report for one day whe freeipa_sssd_tools_log_log is enabled
- add filter SynLog when record date match with accountExpires date when freeipa_sssd_tools_log_exp is enabled
- add task for filter SynLog with unsynchronized logs when freeipa_sssd_tools_log_nsy is enabled
- add task for split SynLog by date when freeipa_sssd_tools_log_day is enabled

### `tasks/log-view`

- replace variable prefix freeipa_sssd_tools_log_log with freeipa_sssd_tools_rpt_log and fix conditionals when verify and generate SynLog report
- use freeipa_sssd_tools_rpt_err_md as variable for SynLog error report in Markdown
- rename task for view SynLog error report
- fix minor identatation reported by yamllint
- view SynLog error report when freeipa_sssd_tools_rpt_err_view is enabled
- verify if SynLog error report exists
- view SynLog error when freeipa_sssd_tools_log_err_view is enabled
- verify if SynLog error exists
- fix ansible-lint [E601] Don't compare to literal True/False
- view SynLog report when freeipa_sssd_tools_log_log_view is enabled

### `tests/ansible-lint`

- force error codes as strings in skip_list
- add 301 to skip list to allow use module command rather tan module pids

### `tests/cron`

- add playbook for configure crontab entries (backport from feature/ipa-sss-log-day)
- change path in include_tasks to ../tasks/cron.yml
- change identation and path of include cron tasks
- add playbook for configure crontab entries

### `tests/log`

- include log view tasks
- add playbook for process logs

### `tests/start`

- replace debug SSSD Pids with fail when don't get SSSD process IDs
- repair the process ID lists obtained by pgrep and passed to the ps command to get SSSD process IDs
- replace command module with shell to get SSSD process ID
- use command module to skip install psutils required by pidgs module for get SSSD process IDs
- get and show SSSD process IDs after ensure SSSD is started when IPA is running task
- execute SSSD cache count records when SSSD cache and backup exists after restore SSSD ramdisk task
- replace started with restarted to ensure SSSD is startted when IPA is running and actual SSSD state is stopped
- execute SSSD cache count records when SSSD cache and backup exists
- add ipa_sss_cache_result and ipa_sss_cache_backup_result to debug conditionals I
- verify if SSSD cache backup exists
- verify if SSSD cache exists

## [`v0.8.0 - 2023-04-26`](https://gitlab.com/gcoop-libre/ansible_role_freeipa_sssd_tools/-/compare/v0.5.3...v0.8.0) _add tests for API /resyn, fix pause test syn/syn, add pause test syn/qry, kill uwsgi before restart ipa-api-syn service, add show last commit after clone_

### `CHANGELOG`

- update ChangeLog from v0.2.4 to v0.5.0

### `defaults/main`

- add freeipa_sssd_tools_sssd_cache_backup for SSSD cache backup queries
- define pause between test syn/syn (60s) and test syn/qry (5s)
- enable freeipa_sssd_tools_api_uwsgi_kill by default
- add freeipa_sssd_tools_api_uwsgi_test_resyn for /resyn

### `tasks/git`

- show last commit after clone FreeIPA SSSD Tools

### `tasks/systemd`

- kill API processes when freeipa_sssd_tools_api_uwsgi_kill is enabled

### `tasks/test-syn`

- add pause between test API syn/qry
- use freeipa_sssd_tools_test_pause_syn_qry between test resyn/qry
- use freeipa_sssd_tools_test_pause_syn_syn between test syn/syn
- add json.result and json.retval to clarify unknown error in verify API /syn retval
- add json.result and json.retval to clarify unknown error in verify API /qry retval
- add json.result and json.retval to clarify unknown error in verify API /resyn retval
- ignore error when json.result is 'Account not found' in verify API /qry retval
- move pause between test ipa-sss-syn and test API /syn
- add test, verify API /resyn with test and verify /qry
- rename test and verify API /qry
- remove unnecessary pause and rename verify API /syn
- rename test API /syn
- add test and verify ipa-sss-syn with IPA_SSS_SYN_LAST=0

### `tests/ansible-lint`

- add 301 to skip list to allow use module command rather tan module pids

### `tests/cron`

- add playbook for configure crontab entries (backport from feature/ipa-sss-log-day)

### `tests/start`

- replace debug SSSD Pids with fail when don't get SSSD process IDs
- repair the process ID lists obtained by pgrep and passed to the ps command to get SSSD process IDs
- replace command module with shell to get SSSD process ID
- use command module to skip install psutils required by pidgs module for get SSSD process IDs
- get and show SSSD process IDs after ensure SSSD is started when IPA is running task
- execute SSSD cache count records when SSSD cache and backup exists after restore SSSD ramdisk task
- replace started with restarted to ensure SSSD is startted when IPA is running and actual SSSD state is stopped
- execute SSSD cache count records when SSSD cache and backup exists
- add ipa_sss_cache_result and ipa_sss_cache_backup_result to debug conditionals I
- verify if SSSD cache backup exists
- verify if SSSD cache exists

## [`v0.5.3 - 2023-06-02`](https://gitlab.com/gcoop-libre/ansible_role_freeipa_sssd_tools/-/compare/v0.5.2...v0.5.3) _verify if SSSD cache and cache backup exists and replace started with restarted to ensure SSSD is startted when IPA is running and actual SSSD state is stopped_

- tests/start: replace debug SSSD Pids with fail when don't get SSSD process IDs
- tests/start: repair the process ID lists obtained by pgrep and passed to the ps command to get SSSD process IDs
- tests/start: replace command module with shell to get SSSD process ID
- tests/ansible-lint: add 301 to skip list to allow use module command rather tan module pids
- tests/start: use command module to skip install psutils required by pidgs module for get SSSD process IDs
- tests/start: get and show SSSD process IDs after ensure SSSD is started when IPA is running task
- tests/start: execute SSSD cache count records when SSSD cache and backup exists after restore SSSD ramdisk task
- tests/start: replace started with restarted to ensure SSSD is startted when IPA is running and actual SSSD state is stopped
- defaults/main: add freeipa_sssd_tools_sssd_cache_backup for SSSD cache backup queries
- tests/start: execute SSSD cache count records when SSSD cache and backup exists
- tests/start: add ipa_sss_cache_result and ipa_sss_cache_backup_result to debug conditionals I
- tests/start: verify if SSSD cache backup exists
- tests/start: verify if SSSD cache exists

## [`v0.5.2 - 2023-05-25`](https://gitlab.com/gcoop-libre/ansible_role_freeipa_sssd_tools/-/compare/v0.5.1...v0.5.2) _add playbook for configure crontab entries_

- tests/cron: add playbook for configure crontab entries (backport from feature/ipa-sss-log-day)

## [`v0.5.1 - 2022-12-22`](https://gitlab.com/gcoop-libre/ansible_role_freeipa_sssd_tools/-/compare/v0.5.0...v0.5.1) _define freeipa_sssd_tools_httpd_srv_mon_path and use in cron job and fix identation become in set ipa-sss-plt.cfg_

- defaults/main: define freeipa_sssd_tools_httpd_srv_mon_path and use in cron job
- tasks/config: fix identation become in set ipa-sss-plt.cfg

## [`v0.5.0 - 2022-12-19`](https://gitlab.com/gcoop-libre/ansible_role_freeipa_sssd_tools/-/compare/v0.4.0...v0.5.0) _add tasks to ensure ramdisk present in fstab and verify is mounted add ipa-sss-rsy in crontab to backup SSSD cache, execute ipa-sss-rtr to restore backup when start IPA services_

- tests/start: add count records in SSSD cache and backup after restore backup and after start SSSD
- tests/start: fix invalid register syntax in count records in SSSD cache and backup cache before restore
- tests/start: count records in SSSD cache and backup cache before restore
- tests/start: add task to count records in SSSD cache
- tests/start: add task to start cron service after restore ramdisk backup
- tests/start: add task to execute ipa-sss-rtr to restore ramdisk backup
- tests/start: add task to fail when ipa-sss-rsy is running
- tests/start: add task to stop cron service before restore ramdisk
- defaults/main: add ipa-sss-rtr in freeipa_sssd_tools_set_permissions_script_files
- tasks/cron: write temporal test users when freeipa_sssd_tools_cron_test_ipa_usr_all is enabled
- defaults/main: define sss-db weekly backup cron job
- defaults/main: enable freeipa_sssd_tools_cron_ipa_sss_db
- defaults/main: add ipa-sss-ldb in freeipa_sssd_tools_set_permissions_script_files
- tasks/test-syn: add pause between test and verify ipa-api-qry
- defaults/main: add cron job ipa-sss-rsy for execute rsync of sssd cache
- defaults/main: define freeipa_sssd_tools_cron_ipa_sss_rsy_backup ad /var/lib/ipa/backup/sss-db
- defaults/main: enable freeipa_sssd_tools_cron_ipa_sss_rsy
- defaults/main: add ipa-sss-rsy in freeipa_sssd_tools_set_permissions_script_files
- tasks/main: include ramdisk tasks
- tasks/ramdisk: add tasks to ensure ramdisk present in fstab and verify ramdisk is mounted
- defaults/main: enable freeipa_sssd_tools_ramdisk_configure

## [`v0.4.0 - 2022-11-28`](https://gitlab.com/gcoop-libre/ansible_role_freeipa_sssd_tools/-/compare/v0.3.0...v0.4.0) _configure logrotate and crontabs to get and sync users and generate and plot metrics, add /syn in httpd to serve metrics, clean up untracked git files, and fix script permissions_

### `CHANGELOG`

- add CHANGELOG.md from v0.1.0 to v0.3.0

### `defaults/main`

- fix typo in freeipa_sssd_tools_cron_test_environment definition
- define variables for test crontab commands before configure crontab
- fix typo in freeipa_sssd_tools_cron_path, add missing ':'
- remove PATH define from freeipa_sssd_tools_cron_entries
- define name of cron service in freeipa_sssd_tools_cron_service
- set freeipa_sssd_tools_cron_path with all bin paths
- define user un cron entry when define PATH
- fix typo, replace freeipa_sssd_tools_cron_ipa_usr_mon with freeipa_sssd_tools_cron_ipa_srv_mon
- redefine crontab entries for scripts ipa-sss-syn, ipa-srv-mon and ipa-sss-all
- define variables to enable/disable crontab for scripts
- add variables to configure logrotate for ipa-sss-syn
- use freeipa_sssd_tools_httpd_syn_plt_conf in ipa_plt variable in freeipa_sssd_tools_httpd_syn_plt
- freeipa_sssd_tools_httpd_syn_plt_conf as /root/ipa-sss-plt.cfg as default
- add PATH in ipa_plt and ipa_srv variables in freeipa_sssd_tools_httpd_syn_plt
- define LDAP variables for exclude and search users in ipa-config
- remove ipa-sss-rsy from freeipa_sssd_tools_set_permissions_script_files
- disable remove untrackted files in git repository by default
- define freeipa_sssd_tools_set_permissions_script_files with default mode 0750
- disable freeipa_sssd_tools_set_permissions_file_min
- add variable to run httpd syn url test, enabled by default
- add variables to build url of httpd syn
- add freeipa httpd syn plot variables
- add freeipa httpd syn template variables
- add freeipa httpd syn config and html and css variables
- add freeipa httpd syn paths variables

### `general`

- fix typo, replace logrorate with logrotate in defaults, tasks and template

### `tasks/config`

- add task to set ipa-sss-plt.cfg for define gnuplot style and common variables

### `tasks/cron`

- add task to test ipa-usr-syn using temporal users files before configure crontab
- add task to test write temporal test users file to test ipa-usr-syn before configure crontab
- add task to test ipa-usr-all to get users from LDAP/AD before configure crontab
- check directories (without create) defined in PATH of crontab before add PATH
- check directories defined in PATH of crontab before add PATH
- use freeipa_sssd_tools_cron_service in service name when restart service cron
- add day, month, user and weekday options, add conditionals when define cron entries jobs
- add cron_file, job and user options, add conditionals when add PATH on top of crontab
- set default behavior for cron attributes and add env option for environment variables

### `tasks/git`

- define freeipa_sssd_tools_dir in remove untracked files in git repository before clone when is git repository
- remove untracked files in git repository before clone when is git repository
- add task to remove untracked files in git repository before clone

### `tasks/httpd`

- add task to run httpd syn url test
- fix typo variable to verify checksum when download httpd syn css
- fix typo variable to download httpd syn css
- add freeipa httpd tasks to configure apache to serve metrics on /syn

### `tasks/httpd-dirs`

- add the freeipa httpd task to create directories

### `tasks/logrotate`

- add task to execute logrotate in dry-run mode
- fix destination path of logrotate ipa-sss-syn
- add task to configure logrotate for ipa-sss-syn

### `tasks/main`

- include logrotate tasks
- includes httpd tasks to configure trace metrics

### `tasks/packages`

- add task to ensure plot required packages are installed

### `tasks/permissions`

- add freeipa_sssd_tools_dir in ensure scripts has correct permissions
- add task to ensure scripts has correct permissions

### `templates/ipa-config`

- add LDAP variables for exclude and search users in ipa-config
- add freeipa template to configure plot metrics

### `templates/logrotate.d`

- add template to configure logrotate for ipa-sss-syn

### `templates/syn.conf`

- add the freeipa httpd template to configure access to metrics in /syn

### `vars/AlmaLinux`

- define freeipa_sssd_tools_plot_packages

### `vars/RedHat`

- define freeipa_sssd_tools_plot_packages

## [`v0.3.0 - 2022-10-12`](https://gitlab.com/gcoop-libre/ansible_role_freeipa_sssd_tools/-/compare/v0.2.4...v0.3.0) _add playbook for start/restart FreeIPA SSSD services_

### `doc`

- update LICENSE

### `Makefile`

- refactor lint and syntax rules to verify multiple playbooks

### `tests/start`

- enable freeipa_sssd_tools_service_sssd_stop
- add debug conditionals III
- add debug conditionals II
- add debug conditionals I
- add krb5kdc in running state as conditional
- remove dirsrv@ and ip services as conditionals, they are always in the same state
- remove freeipa_sssd_tools_service_dirsrv_domain_state and use dirsrv_domain variable as key of ansible_facts.services
- add pki-tomcatd services to services list
- start sssd-secrets service together with sssd
- fix state for sssd service in ensure SSSD is startted when IPA is running
- fix conditional for ipa service in ensure SSSD is startted when IPA is running
- add populate service facts after start IPA
- ensure SSSD is startted when IPA is running
- register freeipa_sssd_tools_ipactl_start_status and fail when ipactl was not successful
- fix status IPA services command
- add status IPA services task after start IPA services
- define conditional and command for ipactl start, enabled by default
- add link to issue of smb service fail to start after update
- fix ansible_distribution conditional
- fix gather_facts gather_subset min
- enable freeipa_sssd_tools_ipactl_ignore_service_failure by default
- force --ignore-service-failure only in CentOS
- define gather_facts min
- fix define service dirsrv domain state task
- add start as default of freeipa_sssd_tools_ipactl_start_cmd
- fix add task for debug conditionals
- add task for debug conditionals
- define service dirsrv domain state in variable for use as conditional in start IPA services
- add .service suffix in dirsrv_domain
- enable freeipa_sssd_tools_ipactl_start and define freeipa_sssd_tools_ipactl_start_cmd with freeipa_sssd_tools_ipactl_bin
- include 'dirsrv@' in dirsrv_domain definition
- add conditionals for service facts populate, stop sssd service and no log
- update services list in freeipa_sssd_tools_services
- fix typo for ipa.service in stopped SSSD when IPA is stopped
- add playbook for start/restart FreeIPA SSSD services

### `tests/start.yml`

- add task for start IPA using ipactl with conditionals (don't use --ignore-service-failure by default)

## [`v0.2.4 - 2022-09-06`](https://gitlab.com/gcoop-libre/ansible_role_freeipa_sssd_tools/-/compare/v0.2.3...v0.2.4) _replace mirrorlist with baseurl in all yum repositories to prevent unwanted redirects_

- defaults/main: define freeipa_sssd_tools_yum_repo_epel_baseurl with http://dl.fedoraproject.org/pub/epel
- defaults/main: define freeipa_sssd_tools_yum_repo_updates_source_baseurl with freeipa_sssd_tools_yum_repo_base_source_baseurl
- defaults/main: define freeipa_sssd_tools_yum_repo_extras_source_baseurl with freeipa_sssd_tools_yum_repo_base_source_baseurl
- defaults/main: define freeipa_sssd_tools_yum_repo_centosplus_source_baseurl with freeipa_sssd_tools_yum_repo_base_source_baseurl
- defaults/main: define freeipa_sssd_tools_yum_repo_base_source_baseurl with http://vault.centos.org/centos
- defaults/main: disable freeipa_sssd_tools_yum_repo_epel_source_enabled
- defaults/main: disable freeipa_sssd_tools_yum_repo_epel_debuginfo_enabled
- tasks/yum-dnf: verify and configure fastestmirror plugin
- tasks/yum-dnf: add clean all YUM cache
- tasks/yum-repos: Configure YUM Repositories in /etc/yum.repos.d
- tasks/packages: remove epel repo and include yum-repos tasks
- tasks/main: include OS family and distribution variables
- vars/AlmaLinux_AlmaLinux: define yum repositories for AlmaLinux
- vars/RedHat_CentOS: define yum repositories for CentOS
- defaults/main: add variables for yum repositories configure

## [`v0.2.3 - 2022-08-30`](https://gitlab.com/gcoop-libre/ansible_role_freeipa_sssd_tools/-/compare/v0.2.2...v0.2.3) _fixes for running in check mode in CentOS and AlmaLinux (proxy, permissions and API tests)_

### `ansible-lint`

- add 303 to skip list to allow use command git rather tan module git

### `defaults/main`

- add variables to define owner, mode and group of freeipa_sssd_tools_dir

### `tasks/git`

- verify if freeipa_sssd_tools_dir is a git repository using git

### `tasks/main`

- replace config variables with directory variables for define owner, mode and group of freeipa sssd tools dir

### `tasks/packages`

- remove YUM config only and include tasks to configure YUM and DNF
- add no_log using freeipa_sssd_tools_no_log in enable proxy in /etc/yum.conf

### `tasks/test-syn`

- add pause between test and verify ipa-api-syn when freeipa_sssd_tools_test_pause > 0
- add default('') filter to prevent error "dict object has no attribute json"
- add default('') filter to prevent error "dict object has no attribute rc"
- add is defined to prevent error when run check mode

### `tasks/yum-dnf`

- add tasks to force IPv4 and enable proxy in YUM/DNF config

### `vars/AlmaLinux`

- add same variables like RedHat and define freeipa_sssd_tools_etc_yum_dnf_files with /etc/yum.conf and /etc/dnf/dnf.conf

### `vars/RedHat`

- define freeipa_sssd_tools_etc_yum_dnf_files with /etc/yum.conf
- remove trainling whitespace

## [`v0.2.2 - 2022-05-19`](https://gitlab.com/gcoop-libre/ansible_role_freeipa_sssd_tools/-/compare/v0.2.1...v0.2.2) _backup current directory if not a free-ipa-sssds-tools git repository_

### `defaults`

- define freeipa_sssd_tools_git_config
- define freeipa_sssd_tools_dir_backup

### `tasks/git`

- backup current directory if not a free-ipa-sssds-tools git repository
- verify free-ipa-sssd-tools is git repository
- verify free-ipa-sssd-tools directory exists

## [`v0.2.1 - 2022-05-03`](https://gitlab.com/gcoop-libre/ansible_role_freeipa_sssd_tools/-/compare/v0.2.0...v0.2.1) _add support to use http proxy in /etc/yum.conf_

### `defaults/main`

- define freeipa_sssd_tools_http_proxy_yum and freeipa_sssd_tools_http_proxy_ipv4
- enable freeipa_sssd_tools_no_log

### `gitlab-ci`

- add awx-config.sh to launch job
- add ansible-awx stage to manual deploy

### `Makefile`

- update rules to support awx deploy

### `tasks/git`

- remove set_fact freeipa_sssd_tools_http_proxy_url and freeipa_sssd_tools_git_environment already defined in proxy tasks

### `tasks/main`

- include proxy tasks

### `tasks/packages`

- set ip_resolve and proxy in /etc/yum.conf

### `tasks/proxy`

- set_fact freeipa_sssd_tools_http_proxy_url and freeipa_sssd_tools_git_environment

## [`v0.2.0 - 2022-05-02`](https://gitlab.com/gcoop-libre/ansible_role_freeipa_sssd_tools/-/compare/v0.1.0...v0.2.0) _install and configure api-ipa-syn and ipa-que-syn_

### `ansible-lint`

- add tests/.ansible-lint with 302 in skip_list and remove .ansible-lint
- add .ansible-lint with 302 in skip_list

### `defatuls/main.yml`

- Added user and group name variables with shell and home settings for creating api user

### `defaults`

- disable freeipa_sssd_tools_api_sudoers
- use freeipa_sssd_tools_api_que_syn_cmd in sudoers
- enable freeipa_sssd_tools_ipa_req_file_loc to install python api requirements
- define freeipa_sssd_tools_http_proxies_env: []
- define freeipa_sssd_tools_config_log_error: /var/log/ipa-sss-syn.err
- define freeipa_sssd_tools_ldap_domain: addomain.com
- define critical and warnings test return code errors
- enable test syn to verify correct install and execution of api
- define api test syn variables
- define uwsgi ini config variables
- define freeipa_sssd_tools_api_uwsgi_port: 8888 (8080 used by FreeIPA)
- define freeipa_sssd_tools_api_uwsgi_cmd using (_bin|_pid|_ini) variables
- add variables (_bin|_pid|_ini) for uwsgi
- add freeipa_sssd_tools_api_que_syn_mode: 0750
- add freeipa_sssd_tools_api_que_syn_bin to use in freeipa_sssd_tools_api_que_syn_cmd
- rename api-que-syn user and group variables
- rename api-que-syn config file extension from .py to .yml
- set root as user and group for api
- disable create user and group for api
- add freeipa_sssd_tools_log_(owner|group|mode)
- set freeipa_sssd_tools_config_mode: 0640
-/main.yml: Fix yml sintax error

### `defaults/main`

- delete gcoop-libre.sudoers dependency variables
- Added api config flow control variables

### `defaults/main.tml`

- Added freeipa_sssd_tools_api_create_usrgrp flow control variable

### `defaults/main.yml`

- added freeipa_sssd_tools_api_sudoers_sudoers to include rules in sudoers file
- Change freeipa_sssd_tools_api_sudoers_sudoers_d to include proper members in cmnd_aliases
- added freeipa_sssd_tools_api_que_syn_run_sudo variable
- added freeipa_sssd_tools_api_sysd_daemon_reload variable
- fix wrong variable assignation
- fix syntax on freeipa_sssd_tools_syn_cmd variable declaration
- added freeipa_sssd_tools_set_permissions_script variable
- added freeipa_sssd_tools_syn_cmd variable
- added freeipa_sssd_tools_set_permissions_db variable
- added freeipa_sssd_tools_set_permissions_ownership variable
- added freeipa_sssd_tools_group variable
- added freeipa_sssd_tools_set_permissions_py variable
- added freeipa_sssd_tools_set_permissions_dir variable
- change freeipa_sssd_tools_api_sudoers_sudoers as dictionary
- Added freeipa_sssd_tools_api_uwsgi_test_qry variable with API qry endpoint
- Added undefined freeipa_sssd_tools_sysd_dir variable
- Fix freeipa_sssd_tools_api_home_create variable name
- Fix duplicated freeipa_sssd_tools_api_dir variable declaration
- freeipa_sssd_tools_api_db_input variable asignment typo
- Fix more yml syntax error
- Added python requirement intallation flow control
- Added systemd unit deployment flow control variables
- Added freeipa_sssd_tools_api_create_usr flow control variable
- Added freeipa_sssd_tools_api_create_grp flow control variable
- Added freeipa_sssd_tools_api_deploy flow control variable
- Added API sudoers config vaiable
- Added uwsgi port config variable
- Added API config variables
- Added API que-syn-config variables
- Added API python requirements file location variable
- Added API uWSGI systemd unit variables
- Added api-que-syn systemd unit variables
- Added config file properties for api and que_syn
- Added freeipa_sssd_tools_api_dir variable

### `defaults/main.yml`

-/main.yml: Fix yml sintax error

### `defautls/main.yml`

- added freeipa_sssd_tools_set_permissions_file_min variable
- added freeipa_sssd_tools_set_permissions variable

### `gitlab-ci`

- remove only_develop in all stages

### `main/defaults.yml`

- Fix freeipa_sssd_tools_api_dir and freeipa_sssd_tools_api_conf_dir removed trailing slashes

### `meta/main`

- remove gcoop-libre.sudoers dependency

### `meta/main.yml`

- added sudoers_sudoers variable for role dependency on gcoop-libre.sudoers
- fix variable name for sudoers files as expected on gcoop-libre.sudoers
- change rol vars to sudoers_sudoers_d to incluye sudoers as new file
- Fix another yml syntax error
- Fix yml syntax error

### `pre-commit`

- add end-of-file-fixer, trailing-whitespace and ansible-lint

### `roles/requirements`

- delete gcoop-libre.sudoers dependency

### `roles/requirements.yml`

- change dependency version to feature/add_conditionals

### `task/api-users.yml`

- Added freeipa_sssd_tools_api_create_grp flow control variable

### `task/config.yml`

- Added freeipa_sssd_tools_config_api_config_api flow control variable and fix become identation

### `tasks/api-users.yml`

- Fix yml syntax error
- Added freeipa_sssd_tools_api_create_usr flow control variable
- Added tasks for API user and groups creation

### `tasks/config`

- set ipa-api-que-syn config.yml from template
- ensure ipa-api-que-syn permissions
- set uwsgi.ini using template
- ensure ipa-sss-syn.err exists and set permissions
- ensure ipa-sss-syn.log exists and set permissions

### `tasks/config.yml`

- Fix freeipa_sssd_tools_api_config_que_syn variable name
- Fix freeipa_sssd_tools_api_config_api variable name
- Fix yml syntax error
- Added freeipa_sssd_tools_config_api_config_que-syn flow control variable and fix become identation
- Added task to deploy ipa-api-daemon-config
- Added task to deploy ipa-api-config

### `tasks/git.yml`

- Added umask, not parametrized

### `tasks/main`

- remove trailing whitespaces for ansible-lint
- ensure tools directory exists and set permissions

### `tasks/main.yml`

- added task to include permissions tasks
- Users not being created before configuration files ownershit settings
- Added tasks to include systemd related tasks
- Added task to include API user/group creation tasks
- Added task to include python requirements tasks

### `tasks/packages`

- add install python-pip (from epel repo) task
- add ensure epel repo is enabled task
- add install epel repository task

### `tasks/packages.yml`

- Added task to ensure API required packages are installed

### `tasks/permissions`

- remove trailing whitespace
- change from command to ansible builtin file module

### `tasks/permissions.yml`

- fix typo in with_items
- Must loop with with_items
- fix syntax error
- Ensuring database permissions are correct with ansible builtin file module
- change from command to file builtin ansible module
- fix space at begining of task declaration
- added extra task to ensure sync script has correct permissions
- restrict owner execution rights for all files
- added task to ensure processed databse permissions
- added task to ensure input database permissions
- added task to ensure directories and files ownership
- fix missing operand after file mask
- added task to ensure all files have minimal permissions
- Added task to ensure directories have correct permissions

### `tasks/permisssions.yml`

- added task to ensure all python files have exec rights

### `tasks/python-reqs`

- allow use http proxy in pip install requirements

### `tasks/python-reqs.yml`

- Added umask. not parametrized yet
- Added forcereinstall, to install python packages if they were already installed
- Added task for installing API python requirements

### `tasks/systemd`

- enable become in systemd tasks
- remove trailing whitespaces for ansible-lint

### `tasks/systemd.yml`

- Fix syntax error on daemon_reaload parameters
- added daemon_reload task parameter
- Changed state from started to restarted to restart the services in case of redeploy
- Added freeipa_sssd_tools_api_que_sysd_activate flow control variable
- Added freeipa_sssd_tools_api_sysd_activate flow control variable
- Added freeipa_sssd_tools_api_que_sysd flow control variable and fix become identation
- Added freeipa_sssd_tools_api_sysd flow control variable and fix become identation
- Added tasks for deploying and activating API systemd unit

### `tasks/test-syn`

- remove trailing whitespace
- add task to fail when api syn request don't return OK
- add task to execute and register api syn request
- add task to fail when ipa-sss-syn returns critical error code
- enable ignore errors and register ipa-sss-syn result

### `tasks/test-syn.yml`

- Added test verification for API's query endpoint
- Added API's query endpoint test

### `tempaltes/ipa-api-que-syn-config.j2`

- added new parameter to escalate privileges

### `templates/ipa-api-config.j2`

- Added processed accounts database variable for API's query end-point
- Added template for API config

### `templates/ipa-api-que-syn-config`

- fix invalid YAML syntax file

### `templates/ipa-api-que-syn-config.j2`

- Added template for api-que-syn config

### `templates/ipa-api-syn_sysd_unit`

- rename api-que-syn user and group variables

### `templates/ipa-api-syn_systemd_unit.j2`

- Added template for api systemd unit

### `templates/ipa-api_uwsgi`

- define http using ip and port uwsgi variables

### `templates/ipa-api_uwsgi.j2`

- Added template for api uwsgi config

### `templates/ipa-que-syn_sysd_unit.j2`

- Fix variable names typos
- Added template for api-que-syn systemd unit

### `tests/test`

- add role prefix in test playbook

### `vars/RedHat`

- remove epel-release and python-pip from api packages

### `vars/RedHat.yml`

- Added RedHat packages required by ipa-api-syn

## [`v0.1.0 - 2021-11-26`](https://gitlab.com/gcoop-libre/ansible_role_freeipa_sssd_tools/-/compare/51d30cb...v0.1.0) _first release_

