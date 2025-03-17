# -*- coding: utf-8 -*-
# vim: ft=yaml
---
apt:
  remove_sources_list: true
  clean_sources_list_d: true

  repositories:
    unmanaged:
      unmanaged: true # do not remove this file when clean_sources_list_d=true
      filename: unmanaged.list # optional

    heroku:
      distro: ./
      url: https://cli-assets.heroku.com/apt
      arch: [amd64]
      comps: []
      key_url: https://cli-assets.heroku.com/apt/release.key
    raspbian:
      # If you want to use a particular filename under /etc/apt/sources.list.d
      # set it here, with extension included
      filename: my_raspbian_repo.list
      distro: stable
      url: http://archive.raspbian.org/raspbian
      type: [source]
      key_url: https://archive.raspbian.org/raspbian.public.key
    saltstack:
      filename: saltstack.list
      distro: stable
      url: https://packages.broadcom.com/artifactory/saltproject-deb
      comps: [main]
      type: [binary]
      key_url: https://packages.broadcom.com/artifactory/api/security/keypair/SaltProjectKey/public  # yamllint disable-line rule:line-length
      opts: "signed-by=/etc/apt/keyrings/salt-archive-keyring.pgp"