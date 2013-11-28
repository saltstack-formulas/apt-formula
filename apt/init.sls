{% if grains['os']=="Ubuntu" %}

apt-get update:
  cmd.wait:
   - order: 130

apt-get upgrade:
  cmd.wait:
    - order: 135

apt-get dist-upgrade:
  cmd.wait:
    - order: 135
   
{% endif %}
