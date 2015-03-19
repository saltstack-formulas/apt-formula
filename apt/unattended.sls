# This is the main state file for configuring unattended upgrades with apt
{% from "apt/map.jinja" import apt with context %}
{% set apt = pillar.get('apt:unattended', {}) -%}
{% set unattended_config_template = apt.get('unattended_config_template', 'salt://apt/templates/unattended_config.jinja') -%}
{% set periodic_config_template = apt.get('periodic_config_template', 'salt://apt/templates/periodic_config.jinja') -%}

apt_unattended_pakgs::
  pkg.installed:
    - pkgs:
      {% for pkg in apt.pkgs %}
      - {{ pkg }}
      {% endfor %}  

{{ apt.confd_dir }}/{{ apt.unattended_config }}:
  file.managed:
    - template: jinja
    - user: root
    - group: root
    - mode: 644
    - source: {{ unattended_config_template }}

{{ apt.confd_dir }}/{{ apt.periodic_config }}:
  file.managed:
    - template: jinja
    - user: root
    - group: root
    - mode: 644
    - source: {{ periodic_config_template }}
