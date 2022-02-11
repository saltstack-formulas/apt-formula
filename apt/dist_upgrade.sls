apt-get -y dist-upgrade:
  cmd.run:
    - onchanges:
      - file: /etc/apt/sources.list
      - file: /etc/apt/sources.list.d
