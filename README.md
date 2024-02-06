# Ansible Role: `gcoop-libre.freeipa_sssd_tools`

This role, install and configure useful scripts for _FreeIPA_.

## Tags Summary


| _date_     | _tag_      | _description_                                                                                                                                                                            |
|------------|------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 2024-02-06 | `  v0.9.4` | add playbook to clone FreeIPA SSSD tools and run ipa-hlt-chk to check Network, DNS, NTP, SSSD, KRB5 and others dependencies to determine health of IPA                                   |
| 2024-01-29 | `  v0.9.3` | get dirsrv status from ansible_facts to start dirsrv service and restart sssd when is dirsrv is stopped and add task to fail when dirsrv service is STOPPED at end of playbook           |
| 2023-11-30 | `  v0.9.2` | get httpd status from ansible_facts to start httpd service when is stopped, improve tasks names and debug conditionals                                                                   |
| 2023-08-08 | `  v0.9.1` | get krb5kdc status from ipactl status sdtout and get SubState property from systemctl to start krb5kdc service when krb5kdc is STOPPED/dead to mitigate unknown state from ansible_facts |
| 2023-07-20 | `  v0.9.0` | add playbook log.yml to get, process and view synchronization logs of the time range of a specific day                                                                                   |
| 2023-04-26 | `  v0.8.0` | add tests for API /resyn, fix pause test syn/syn, add pause test syn/qry, kill uwsgi before restart ipa-api-syn service, add show last commit after clone                                |
| 2023-06-02 | `  v0.5.3` | verify if SSSD cache and cache backup exists and replace started with restarted to ensure SSSD is startted when IPA is running and actual SSSD state is stopped                          |
| 2023-05-25 | `  v0.5.2` | add playbook for configure crontab entries                                                                                                                                               |
| 2022-12-22 | `  v0.5.1` | define freeipa_sssd_tools_httpd_srv_mon_path and use in cron job and fix identation become in set ipa-sss-plt.cfg                                                                        |
| 2022-12-19 | `  v0.5.0` | add tasks to ensure ramdisk present in fstab and verify is mounted add ipa-sss-rsy in crontab to backup SSSD cache, execute ipa-sss-rtr to restore backup when start IPA services        |
| 2022-11-28 | `  v0.4.0` | configure logrotate and crontabs to get and sync users and generate and plot metrics, add /syn in httpd to serve metrics, clean up untracked git files, and fix script permissions       |
| 2022-10-12 | `  v0.3.0` | add playbook for start/restart FreeIPA SSSD services                                                                                                                                     |
| 2022-09-06 | `  v0.2.4` | replace mirrorlist with baseurl in all yum repositories to prevent unwanted redirects                                                                                                    |
| 2022-08-30 | `  v0.2.3` | fixes for running in check mode in CentOS and AlmaLinux (proxy, permissions and API tests)                                                                                               |
| 2022-05-19 | `  v0.2.2` | backup current directory if not a free-ipa-sssds-tools git repository                                                                                                                    |
| 2022-05-03 | `  v0.2.1` | add support to use http proxy in /etc/yum.conf                                                                                                                                           |
| 2022-05-02 | `  v0.2.0` | install and configure api-ipa-syn and ipa-que-syn                                                                                                                                        |
| 2021-11-26 | `  v0.1.0` | first release                                                                                                                                                                            |


## Requirements

_FreeIPA SSSD Tools_ from git repository:

- https://gitlab.com/gcoop-libre/freeipa-sssd-tools
- https://gitlab.com/gcoop-libre/freeipa-sssd-tools
- https://gitlab.com/osiux/freeipa-sssd-tools
- https://github.com/gcoop-libre/freeipa-sssd-tools
- https://github.com/gcoop-libre/freeipa-sssd-tools
- https://github.com/osiris/freeipa-sssd-tools
- https://codeberg.org/osiux/freeipa-sssd-tools

## Role Variables

Available variables with default values in `defaults/main.yml`.

## Dependencies

- `git`
- `gnuplot`
- `ldap-utils`
- `ldb-tools`
- `sssd-tools`

## Example Playbook

```yaml

---

- name: Install FreeIPA SSSD Tools
  hosts: [all]

  roles:
    - role: gcoop-libre.freeipa_sssd_tools

```

## Useful Playbooks

| _playbook_                                        | _description_                                                     |
|---------------------------------------------------|-------------------------------------------------------------------|
| [`cron.yml`](../tests/cron.yml)                   | Configure Crontab entries for _FreeIPA_ _SSSD_ _Tools_            |
| [`ipa-health-check.yml`](../ipa-health-check.yml) | Clone `freeipa-sssd-tools` and execute `ipa-hlt-chk`              |
| [`log.yml`](../tests/log.yml)                     | Generate stats report from _FreeIPA_ _SSSD_ _Tools_ _logs_        |
| [`start.yml`](../tests/start.md)                  | Start _FreeIPA_ _Tools_ Services and restore persistent `RAMDISK` |
| [`test.yml`](../tests/test.yml)                   | Install and configure _FreeIPA_ _Tools_                           |

## License

GNU General Public License, GPLv3.

## Author Information

This role was created in 2021 by
 [Osiris Alejandro Gomez](https://osiux.com/), worker cooperative of
 [gcoop Cooperativa de Software Libre](https://www.gcoop.coop/).
