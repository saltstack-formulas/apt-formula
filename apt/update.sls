apt-get -y update:
  cmd.run:
    - onchanges:
      - file: /etc/apt/sources.list
      - file: /etc/apt/sources.list.d
