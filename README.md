# Ansible Role: gcoop-libre.freeipa_sssd_tools

This role, install and configure useful scripts for FreeIPA.

## Requirements

_FreeIPA SSSD Tools_ from git repository:

- https://gitlab.com/gcoop-libre/freeipa-sssd-tools
- https://github.com/gcoop-libre/freeipa-sssd-tools

## Role Variables

Available variables with default values in `defaults/main.yml`.

## Dependencies

- git
- ldap-utils
- ldb-tools
- sssd-tools

## Example Playbook

```yaml

---

- name: Install FreeIPA SSSD Tools
  hosts: [all]

  roles:
    - role: gcoop-libre.freeipa_sssd_tools

```

## License

GNU General Public License, GPLv3.

## Author Information

This role was created in 2021 by
 [Osiris Alejandro Gomez](https://osiux.com/), worker cooperative of
 [gcoop Cooperativa de Software Libre](https://www.gcoop.coop/).
