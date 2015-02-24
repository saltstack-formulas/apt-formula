# This is the main state file for configuring unattended upgrades with apt

{% from "apt/map.jinja" import map with context %}

apt_unattended_pakgs::
  pkg.installed:
    - pkgs:
      {% for pkg in map.pkgs %}
      - {{ pkg }}
      {% endfor %}  

{% set origins_pattern = salt['pillar.get']('apt:unattended:origings_pattern', ['origin=Debian,archive=stable,label=Debian-Security']) %}
{% set package_blacklist = salt['pillar.get']('apt:unattended:package_blacklist', {}) %}
{% set auto_fix_interrupted_dpkg = salt['pillar.get']('apt:unattended:auto_fix_interrupted_dpkg', 'true') %}
{% set minimal_steps = salt['pillar.get']('apt:unattended:minimal_steps', 'false') %}
{% set install_on_shutdown = salt['pillar.get']('apt:unattended:install_on_shutdown', 'false') %}
{% set mail = salt['pillar.get']('apt:unattended:mail', 'root') %}
{% set mail_only_on_error = salt['pillar.get']('apt:unattended:mail_only_on_error', 'false') %}
{% set remove_unused_dependencies = salt['pillar.get']('apt:unattended:remove_unused_dependencies', 'true') %}
{% set automatic_reboot = salt['pillar.get']('apt:unattended:automatic_reboot', 'false') %}
{% set dl_limit = salt['pillar.get']('apt:unattended:dl_limit', '0') %}

{{ map.confd_dir }}/{{ map.unattended_config }}:
  file.managed:
    - contents: |
        Unattended-Upgrade::Origins-Pattern {
          {%- for pattern in origins_pattern %}
          "{{ pattern }}";
          {%- endfor %} 
        };
        Unattended-Upgrade::Package-Blacklist {
          {%- for package in package_blacklist %}
          "{{ package }}";
          {%- endfor %} 
        };
        Unattended-Upgrade::AutoFixInterruptedDpkg "{{ auto_fix_interrupted_dpkg }}";
        Unattended-Upgrade::MinimalSteps "{{ minimal_steps }}";
        Unattended-Upgrade::InstallOnShutdown "{{ install_on_shutdown }}";
        Unattended-Upgrade::Mail "{{ mail }}";
        Unattended-Upgrade::MailOnlyOnError "{{ mail_only_on_error }}";
        Unattended-Upgrade::Remove-Unused-Dependencies "{{ remove_unused_dependencies }}";
        Unattended-Upgrade::Automatic-Reboot "{{ automatic_reboot }}";
        Acquire::http::Dl-Limit "{{ dl_limit }}";

{% set enabled = salt['pillar.get']('apt:unattended:enabled', '1') %}
{% set update_package_lists = salt['pillar.get']('apt:unattended:update_package_lists', '1') %}
{% set download_upgradeable_packages = salt['pillar.get']('apt:unattended:download_upgradeable_packages', '1') %}
{% set unattended_upgrade = salt['pillar.get']('apt:unattended:unattended_upgrade', '1') %}
{% set auto_clean_interval = salt['pillar.get']('apt:unattended:auto_clean_interval', '7') %}
{% set verbose = salt['pillar.get']('apt:unattended:verbose', '2') %}

{{ map.confd_dir }}/{{ map.periodic_config }}:
  file.managed:
    - contents: |
        APT::Periodic::Enable "{{ enabled }}"; 
        APT::Periodic::Update-Package-Lists "{{ update_package_lists }}";
        APT::Periodic::Download-Upgradeable-Packages "{{ download_upgradeable_packages }}";
        APT::Periodic::Unattended-Upgrade "{{ unattended_upgrade }}";
        APT::Periodic::AutocleanInterval "{{ auto_clean_interval }}";
        APT::Periodic::Verbose "{{ verbose }}";
