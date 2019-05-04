apt-get -y upgrade:
  cmd.wait:
    - watch:
      - file: /etc/apt/sources.list
      - file: /etc/apt/sources.list.d
