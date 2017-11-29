{% from "apt/map.jinja" import apt as apt_map with context %}
{% set apt = pillar.get('apt', {}) %}
{% set remove_sources_list = apt.get('remove_sources_list', apt_map.remove_sources_list) %}
{% set clean_sources_list_d = apt.get('clean_sources_list_d', apt_map.clean_sources_list_d) %}
{% set sources_list_dir = apt.get('sources_list_dir', apt_map.sources_list_dir) %}
{% set repositories = apt.get('repositories', apt_map.repositories) %}
{% set default_url = apt.get('default_url', apt_map.default_url) %}

debian-archive-keyring:
  pkg.installed

/etc/apt/sources.list:
  file.managed:
    - mode: '0644'
    - user: root
    - group: root
  {% if remove_sources_list %}
    - contents: ''
    - contents_newline: False
  {% endif %}

{{ sources_list_dir }}:
  file.directory:
    - mode: '0755'
    - user: root
    - group: root
    - clean: {{ clean_sources_list_d }}

{% for repo, args in repositories.iteritems() %}
{%- set r_arch = '[arch=' ~ args.arch|join(',') ~ ']' if args.arch is defined else '' %}
{%- set r_url = args.url or default_url %}
{%- set r_distro = args.distro or 'stable' %}
{%- set r_comps = args.comps|default(['main'])|join(' ') %}
{%- set r_keyserver = args.keyserver if args.keyserver is defined else apt_map.default_keyserver %}

  {%- if args.key_url is defined %}
    {%- set key_body = salt['http.query'](args.key_url).get('body', '') %}
    {%- set key_id = salt['cmd.shell']('apt-key adv --with-fingerprint --with-colons | grep pub', stdin=key_body).split(':')[4] %}
    {%- if key_id not in salt['pkg.get_repo_keys']().keys() %}
apt_key {{ repo }} {{ args.key_url }}:
  module.run:
    - name: pkg.add_repo_key
    - text: |
        {{ key_body|indent(8) }}
    {%- endif %}
  {%- elif args.keyid is defined %}
    {%- set long_keys = salt['pkg.get_repo_keys']().keys() %}
    {%- set short_keys = [] %}
    {%- for long_key in long_keys %}
    {%-   do short_keys.append(long_key[-8:]) %}
    {%- endfor %}
    {%- if args.keyid not in long_keys and args.keyid not in short_keys %}
apt_key {{ repo }} {{ args.keyid }}:
  module.run:
    - name: pkg.add_repo_key
    - keyserver: {{ r_keyserver }}
    - keyid: {{ args.keyid }}
    {%- endif %}
  {%- endif %}


  {%- for type in args.type|d(['binary']) %}
  {%- set r_type = 'deb-src' if type == 'source' else 'deb' %}

{{ sources_list_dir }}/{{ repo }}-{{ type }}.list:
  file.managed:
    - contents: |
        {{ r_type }} {{ r_arch }} {{ r_url }} {{ r_distro }} {{ r_comps }}
    - require_in:
      - file: {{ sources_list_dir }}

  {%- endfor %}
{% endfor %}
