apt-get update:
  cmd.wait:
    - watch:
      - file: /etc/apt/sources.list
      - file: /etc/apt/sources.list.d
