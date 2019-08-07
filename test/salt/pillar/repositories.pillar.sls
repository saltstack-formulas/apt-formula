# -*- coding: utf-8 -*-
# vim: ft=yaml
---
apt:
  remove_sources_list: true
  clean_sources_list_d: true

  repositories:
    spotify:
      distro: stable
      url: http://repository.spotify.com
      arch: [amd64]
      comps: [non-free]
      keyid: 2EBF997C15BDA244B6EBF5D84773BD5E130D1D45
      keyserver: keyserver.ubuntu.com
    heroku:
      distro: ./
      url: https://cli-assets.heroku.com/apt
      arch: [amd64]
      comps: []
      key_url: https://cli-assets.heroku.com/apt/release.key
