# -*- coding: utf-8 -*-
# vim: ft=yaml
---
apt:
  unattended:
    allowed_origins:
      - origin1
    package_blacklist:
      - salt-test
    origins_patterns:
      - origin=SaltStack
      - origin=Debian,archive=stable,label=Debian-Security
    auto_fix_interrupted_dpkg: true
    minimal_steps: false
    install_on_shutdown: false
    mail: root
    sender: root
    mail_report: 'always'
    remove_unused_dependencies: true
    automatic_reboot: false
    dl_limit: 0
    enabled: 1
    update_package_lists: 1
    download_upgradeable_packages: 1
    unattended_upgrade: 1
    auto_clean_interval: 7
    verbose: 2
    syslog_enable: true
    syslog_facility: 'auth'
    dpkg_options: '--force-confold'
    update_days: ['Mon', 'Wed']
    package_whitelist_strict: false
    keep_debs_after_install: false
