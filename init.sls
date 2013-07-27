{% if grains['os']=="Ubuntu" %}

apt-get update:
  cmd.wait:
   - order: 130
   - watch:
     - file: /etc/apt/sources.list

apt-get upgrade:
  cmd.wait:
    - order: 135

apt-get dist-upgrade:
  cmd.wait:
    - order: 135
   
{% endif %}
