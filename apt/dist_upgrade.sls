apt-get -y dist-upgrade:
  cmd.wait:
    - watch:
      - file: /etc/apt/sources.list
      - file: /etc/apt/sources.list.d
