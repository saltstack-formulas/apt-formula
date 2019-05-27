apt:
  remove_sources_list: true
  clean_sources_list_d: true

  repositories:
    spotify:
      distro: stable
      url: http://repository.spotify.com
      arch: [amd64]
      comps: [non-free]
      keyid: 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
      keyserver: keyserver.ubuntu.com
    heroku:
      distro: ./
      url: https://cli-assets.heroku.com/apt
      arch: [amd64]
      comps: []
      key_url: https://cli-assets.heroku.com/apt/release.key

