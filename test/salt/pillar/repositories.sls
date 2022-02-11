# -*- coding: utf-8 -*-
# vim: ft=yaml
---
apt:
  remove_sources_list: true
  clean_sources_list_d: true

  repositories:
    multimedia-stable:
      distro: stable
      url: http://www.deb-multimedia.org
      arch: [amd64]
      comps: [main]
      keyid: 5C808C2B65558117
      keyserver: keyserver.ubuntu.com
    heroku:
      distro: ./
      url: https://cli-assets.heroku.com/apt
      arch: [amd64]
      comps: []
      key_url: https://cli-assets.heroku.com/apt/release.key
