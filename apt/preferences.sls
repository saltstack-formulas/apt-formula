{% from "apt/map.jinja" import apt as apt_map with context %}
{% set apt = pillar.get('apt', {}) %}
{% set remove_preferences = apt.get('remove_preferences', apt_map.remove_preferences) %}
{% set clean_preferences_d = apt.get('clean_preferences_d', apt_map.clean_preferences_d) %}
{% set preferences_dir = apt.get('preferences_dir', apt_map.preferences_dir) %}
{% set preferences = apt.get('preferences', apt_map.preferences) %}
{% set default_url = apt.get('default_url', apt_map.default_url) %}

/etc/apt/preferences:
  file.managed:
    - mode: '0644'
    - user: root
    - group: root
  {% if remove_preferences %}
    - contents: ''
    - contents_newline: False
  {% else %}
    - replace: False
  {% endif %}

{{ preferences_dir }}:
  file.directory:
    - mode: '0755'
    - user: root
    - group: root
    - clean: {{ clean_preferences_d }}

{% for pref_file, args in preferences.items() %}
{%- set p_package = args.package if args.package is defined else '*' %}

{{ preferences_dir }}/{{ pref_file }}:
  file.managed:
    - mode: '0644'
    - user: root
    - group: root
    - contents:
      - "{{ 'Package: ' ~ p_package }}"
      - "{{ 'Pin: ' ~ args.pin }}"
      - "{{ 'Pin-Priority: ' ~ args.priority }}"
{% if 'explanation' in args %}
{% for explanation in args.explanation %}
      - "{{ 'Explanation: ' ~ explanation }}"
{% endfor %}
{% endif %}
{% endfor %}
