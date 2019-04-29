apt-get -y update:
  cmd.wait:
    - watch:
      - file: /etc/apt/sources.list
      - file: /etc/apt/sources.list.d
