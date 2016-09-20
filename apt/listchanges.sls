# This is the main state file for configuring apt-listchanges
{% from "apt/map.jinja" import apt as apt_map with context %}
{% set apt = pillar.get('apt:listchanges', {}) -%}
{% set listchanges_config_template = apt.get('listchanges_config_template', 'salt://apt/templates/listchanges_config.jinja') -%}


apt_listchanges_pkgs:
  pkg.installed:
    - name: apt-listchanges

/etc/apt/listchanges.conf:
  file.managed:
    - template: jinja
    - user: root
    - group: root
    - mode: 644
    - source: {{ listchanges_config_template }}
