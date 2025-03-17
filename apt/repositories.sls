{% from "apt/map.jinja" import apt as apt_map with context %}
{% set apt = pillar.get('apt', {}) %}
{% set remove_sources_list = apt.get('remove_sources_list', apt_map.remove_sources_list) %}
{% set clean_sources_list_d = apt.get('clean_sources_list_d', apt_map.clean_sources_list_d) %}
{% set sources_list_dir = apt.get('sources_list_dir', apt_map.sources_list_dir) %}
{% set keyrings_dir = apt.get('keyrings_dir', apt_map.keyrings_dir) %}
{% set clean_keyrings_list_d = apt.get('clean_keyrings_list_d', apt_map.clean_keyrings_list_d) %}
{% set repositories = apt.get('repositories', apt_map.repositories) %}
{% set default_url = apt.get('default_url', apt_map.default_url) %}
{% set keyring_package = apt.get('keyring_package', apt_map.default_keyring_package) %}

{{ keyring_package }}:
  pkg.installed:
    - name: {{ keyring_package }}

/etc/apt/sources.list:
  file.managed:
    - mode: '0644'
    - user: root
    - group: root
  {% if remove_sources_list %}
    - contents: ''
    - contents_newline: False
  {% else %}
    - replace: False
  {% endif %}

{{ sources_list_dir }}:
  file.directory:
    - mode: '0755'
    - user: root
    - group: root
    - clean: {{ clean_sources_list_d }}

{{ keyrings_dir }}:
  file.directory:
    - mode: '0755'
    - user: root
    - group: root
    - clean: {{ clean_keyrings_list_d }}


{% for repo, args in repositories.items() %}

{% set r_opts = '' %}
{%- set r_arch = 'arch=' ~ args.arch|join(',') if args.arch is defined else '' %}
{% if args.opts is defined %}
  {% if args.opts is string %}
    {% set r_opts = args.opts %}
  {% else %}
    {% set r_opts_list = [] %}
    {%- for k, v in args.opts.items() %}
      {% do r_opts_list.append(k ~ '=' ~ v) %}
    {%- endfor %}
    {% set r_opts =  r_opts_list|join(' ') %}
  {% endif %}
{% endif %}

{% if r_arch != '' or r_opts != '' %}
  {% set r_options = '[' ~ r_arch ~ ' ' ~ r_opts ~ ' ]' %}
{% else %}
  {% set r_options = '' %}
{% endif %}

{%- set r_url = args.url or default_url %}
{%- set r_distro = args.distro or 'stable' %}
{%- set r_comps = args.comps|default(['main'])|join(' ') %}
{%- set r_keyserver = args.keyserver if args.keyserver is defined else apt_map.default_keyserver %}

  {%- for type in args.type|d(['binary']) %}
    {%- set r_type = 'deb-src' if type == 'source' else 'deb' %}
    {%- set r_file = args.filename if args.filename is defined else repo ~ '-' ~ type ~ '.list' %}

{{ r_type }} {{ repo }}:
  pkgrepo.managed:
    - name: {{ r_type }} {{ r_options }} {{ r_url }} {{ r_distro }} {{ r_comps }}
    - file: {{ sources_list_dir }}/{{ r_file }}
    {# You can use either keyid+keyserver or key_url. If both are provided
       the latter will be used. #}
    {% if args.key_url is defined %}
    - key_url: {{ args.key_url }}
      {% if 'signed-by=' in r_opts|lower and args.aptkey is not defined %}
    - aptkey: false
      {% endif %}
    {% elif args.key_text is defined %}
    - key_text: {{ args.key_text }}
    {% elif args.keyid is defined %}
    - keyid: {{ args.keyid }}
    - keyserver: {{ r_keyserver }}
    {% endif %}
    - clean_file: true
    - refresh: False
    - refresh_db: False
    {% if args.aptkey is defined %}
    - aptkey: {{ args.aptkey }}
    {% endif %}
    - onchanges_in:
      - module: apt.refresh_db
  file.managed:
    - name: {{ sources_list_dir }}/{{ r_file }}
    - replace: false
    - require_in:
      - file: {{ sources_list_dir }}
      # require_in the directory clean state
      # This way, we don't remove all the files, just to add them again.
  {%- endfor %}
{% endfor %}

{% if repositories %}
apt.refresh_db:
  module.run:
    - name: pkg.refresh_db
{% endif %}
