# Changelog

# [0.12.0](https://github.com/saltstack-formulas/apt-formula/compare/v0.11.2...v0.12.0) (2025-06-26)


### Features

* **repositories:** stop removing sources files and support unmanaged ([6687a12](https://github.com/saltstack-formulas/apt-formula/commit/6687a12f42b28fac7b170c03c150ec45f1c9acff))

## [0.11.2](https://github.com/saltstack-formulas/apt-formula/compare/v0.11.1...v0.11.2) (2025-04-14)


### Bug Fixes

* **repositories:** force aptkey if signed-by and allow aptkey ([3e11c59](https://github.com/saltstack-formulas/apt-formula/commit/3e11c5999255f22f36e1fd63e10e9e553ed3f538))

## [0.11.1](https://github.com/saltstack-formulas/apt-formula/compare/v0.11.0...v0.11.1) (2025-04-10)


### Continuous Integration

* update `pre-commit` configuration inc. for pre-commit.ci [skip ci] ([347dc41](https://github.com/saltstack-formulas/apt-formula/commit/347dc41faa1520a83e79adc814099abf985612d1))
* use latest test images ([222aa6c](https://github.com/saltstack-formulas/apt-formula/commit/222aa6c79b7e5b8c4907666b6b361c7885ef17f8))


### Tests

* **system.rb:** add support for `mac_os_x` [skip ci] ([bb4d0f8](https://github.com/saltstack-formulas/apt-formula/commit/bb4d0f86db59cf323032c5cee5c8cba22c2fa9cf))

# [0.11.0](https://github.com/saltstack-formulas/apt-formula/compare/v0.10.4...v0.11.0) (2022-04-18)


### Continuous Integration

* **kitchen+gitlab:** update for new pre-salted images [skip ci] ([31773f1](https://github.com/saltstack-formulas/apt-formula/commit/31773f18966831cba08939cd7987750c0961a491))


### Features

* **repositories:** allow to specify custom filename ([2a7e4af](https://github.com/saltstack-formulas/apt-formula/commit/2a7e4afe5a2804035a09a742361354c8039a7d80))


### Tests

* **system:** add `build_platform_codename` [skip ci] ([1a132d8](https://github.com/saltstack-formulas/apt-formula/commit/1a132d84422218bc12f31890c1a92b51bb3ec71c))

## [0.10.4](https://github.com/saltstack-formulas/apt-formula/compare/v0.10.3...v0.10.4) (2022-02-12)


### Code Refactoring

* **salt-lint:** fix violations ([7cc688c](https://github.com/saltstack-formulas/apt-formula/commit/7cc688cf1554ebff114321f1be09ea59f83d9c66))


### Continuous Integration

* update linters to latest versions [skip ci] ([37ca1fa](https://github.com/saltstack-formulas/apt-formula/commit/37ca1fa0574550758947bd0a2b26e5944121d222))
* **3003.1:** update inc. AlmaLinux, Rocky & `rst-lint` [skip ci] ([97b0af6](https://github.com/saltstack-formulas/apt-formula/commit/97b0af695acd8adfd3c3a048de21d03a04560636))
* **commitlint:** ensure `upstream/master` uses main repo URL [skip ci] ([b4cce02](https://github.com/saltstack-formulas/apt-formula/commit/b4cce02adfbd902ee86d175f66c61f5b41b37b15))
* **gemfile:** allow rubygems proxy to be provided as an env var [skip ci] ([a8d9d34](https://github.com/saltstack-formulas/apt-formula/commit/a8d9d347717e17afc0f149f9f23852bf3b26cde9))
* **gemfile+lock:** use `ssf` customised `inspec` repo [skip ci] ([1f136cd](https://github.com/saltstack-formulas/apt-formula/commit/1f136cd52c960ffbd43f97c4e4d658e827c34bc3))
* **gemfile+lock:** use `ssf` customised `kitchen-docker` repo [skip ci] ([ce4f1a8](https://github.com/saltstack-formulas/apt-formula/commit/ce4f1a8488ac65a0d3e34d2f28a47007924958fc))
* **gitlab-ci:** add `rubocop` linter (with `allow_failure`) [skip ci] ([057b19e](https://github.com/saltstack-formulas/apt-formula/commit/057b19ec7ad97afec550ca7c2dbbf28acf53d311))
* **gitlab-ci:** use GitLab CI as Travis CI replacement ([0f9b059](https://github.com/saltstack-formulas/apt-formula/commit/0f9b05940899957ac1c1fe4d6594cbab1d422e56))
* **kitchen:** move `provisioner` block & update `run_command` [skip ci] ([d08806c](https://github.com/saltstack-formulas/apt-formula/commit/d08806c07d7382fb9e6965c0db46b916aad3a386))
* **kitchen+ci:** update with `3004` pre-salted images/boxes [skip ci] ([380c689](https://github.com/saltstack-formulas/apt-formula/commit/380c6894b4c022ca4586693d8e9fd03845aa3b61))
* **kitchen+ci:** update with latest `3003.2` pre-salted images [skip ci] ([efe8592](https://github.com/saltstack-formulas/apt-formula/commit/efe8592337a698ca3361076e1dec453dca9d69d9))
* **kitchen+ci:** update with latest CVE pre-salted images [skip ci] ([9762abf](https://github.com/saltstack-formulas/apt-formula/commit/9762abfb4d3fecd5d4a9028c2e4a6e09667e7ceb))
* **kitchen+ci:** use latest pre-salted images (after CVE) [skip ci] ([d5c38c1](https://github.com/saltstack-formulas/apt-formula/commit/d5c38c1dda806cf874d66292a862cea7b6c21ea1))
* **kitchen+gitlab:** adjust matrix to add `3003` [skip ci] ([6be32dc](https://github.com/saltstack-formulas/apt-formula/commit/6be32dcd4254ef6b0dc7d9033b2b030f5701322a))
* **kitchen+gitlab:** remove Ubuntu 16.04 & Fedora 32 (EOL) [skip ci] ([8086687](https://github.com/saltstack-formulas/apt-formula/commit/8086687001e0e5d38472f65a7b1d2097d818b1b8))
* **kitchen+gitlab:** update for new pre-salted images [skip ci] ([091870b](https://github.com/saltstack-formulas/apt-formula/commit/091870b18c7b1c47536c7df012a553f29a78648c))
* add `arch-master` to matrix and update `.travis.yml` [skip ci] ([5637e07](https://github.com/saltstack-formulas/apt-formula/commit/5637e073b698b3970d99901e1a4abd24fa34318b))
* add Debian 11 Bullseye & update `yamllint` configuration [skip ci] ([758d646](https://github.com/saltstack-formulas/apt-formula/commit/758d646d1e509e1e1a10bfa9b30c3f8261d6bf30))
* **kitchen+gitlab-ci:** use latest pre-salted images [skip ci] ([d486305](https://github.com/saltstack-formulas/apt-formula/commit/d48630589f28fc42d8f0ddb65b6c6d1de3da12b0))
* **pre-commit:** update hook for `rubocop` ([67c1130](https://github.com/saltstack-formulas/apt-formula/commit/67c1130d8957a47ddc71a45a438bb6e74b4a10ac))


### Tests

* standardise use of `share` suite & `_mapdata` state [skip ci] ([9f6b2b1](https://github.com/saltstack-formulas/apt-formula/commit/9f6b2b1250ae4d134d3904cd09df9902bb42f677))

## [0.10.3](https://github.com/saltstack-formulas/apt-formula/compare/v0.10.2...v0.10.3) (2020-10-19)


### Continuous Integration

* **pre-commit:** add to formula [skip ci] ([a472351](https://github.com/saltstack-formulas/apt-formula/commit/a472351b988d980a6a8dcf0c3d138ce547f2db65))
* **pre-commit:** add to formula [skip ci] ([fe75b59](https://github.com/saltstack-formulas/apt-formula/commit/fe75b5923112b88f16497a6e8c7890830874410e))
* **pre-commit:** add to formula [skip ci] ([d9f480a](https://github.com/saltstack-formulas/apt-formula/commit/d9f480a4a435ffe895d435b9870d95a7f0d06b97))
* **pre-commit:** enable/disable `rstcheck` as relevant [skip ci] ([4cf4741](https://github.com/saltstack-formulas/apt-formula/commit/4cf4741228a1210c52f994bec071bfaf6e45609d))
* **pre-commit:** finalise `rstcheck` configuration [skip ci] ([2d520d2](https://github.com/saltstack-formulas/apt-formula/commit/2d520d2f533de5072b45cb47fbc949b92a2eae97))


### Tests

* **repositories:** change to a repo with no key expiration ([e677b78](https://github.com/saltstack-formulas/apt-formula/commit/e677b7891e99bd731981526453a041645f002a78))

## [0.10.2](https://github.com/saltstack-formulas/apt-formula/compare/v0.10.1...v0.10.2) (2020-09-21)


### Bug Fixes

* **preferences,repositories:** fix clean parameter ([50e02fb](https://github.com/saltstack-formulas/apt-formula/commit/50e02fba148d1e040832cefb2d716191046fafb0))


### Continuous Integration

* **kitchen:** use `saltimages` Docker Hub where available [skip ci] ([5fbc45d](https://github.com/saltstack-formulas/apt-formula/commit/5fbc45d052ef2d8fd4682e6a07fd4d4189043324))

## [0.10.1](https://github.com/saltstack-formulas/apt-formula/compare/v0.10.0...v0.10.1) (2020-05-29)


### Continuous Integration

* **gemfile.lock:** add to repo with updated `Gemfile` [skip ci] ([e657de0](https://github.com/saltstack-formulas/apt-formula/commit/e657de0fbc41e9078ce5c4b881096736a3b45e91))
* **kitchen:** avoid using bootstrap for `master` instances [skip ci] ([7aebed6](https://github.com/saltstack-formulas/apt-formula/commit/7aebed62a71520ccee6a2fb96601899787674a09))
* **travis:** add notifications => zulip [skip ci] ([e22b8f0](https://github.com/saltstack-formulas/apt-formula/commit/e22b8f062ee2f9d7078a5f22bf9c787c6f11dc22))
* **travis:** use `major.minor` for `semantic-release` version [skip ci] ([52df5ca](https://github.com/saltstack-formulas/apt-formula/commit/52df5ca1f0a0c70f587d59a99bb351e70bc73750))
* **workflows/commitlint:** add to repo [skip ci] ([63959a0](https://github.com/saltstack-formulas/apt-formula/commit/63959a055314cec3f6e688c64512ede6daa3f9fa))


### Documentation

* **readme:** show only one level in table of contents ([081c77a](https://github.com/saltstack-formulas/apt-formula/commit/081c77ad01a4eb8458426a66f2195cb08b892e31))
* **readme.rst:** add doc for apt_conf state + other minor update ([cf78277](https://github.com/saltstack-formulas/apt-formula/commit/cf78277ce51f4280a52583687a886c1965e90a40))

# [0.10.0](https://github.com/saltstack-formulas/apt-formula/compare/v0.9.1...v0.10.0) (2019-12-18)


### Bug Fixes

* **fluorine:** add name so no virtual_packages ([57bfc61](https://github.com/saltstack-formulas/apt-formula/commit/57bfc61b2c8b79e09d51da58d11d3eaf34a50085))
* **release.config.js:** use full commit hash in commit link [skip ci] ([ca4ba6e](https://github.com/saltstack-formulas/apt-formula/commit/ca4ba6e370a0885689931d6919b89cf5d77517ce))
* **travis:** quote pathspecs used with `git ls-files` [skip ci] ([4303495](https://github.com/saltstack-formulas/apt-formula/commit/4303495139f4577d7d0bedd934811aaa2b8aa2f6))


### Continuous Integration

* **gemfile:** restrict `train` gem version until upstream fix [skip ci] ([5178f0d](https://github.com/saltstack-formulas/apt-formula/commit/5178f0d13facfa4aa27b73f2f76648dbeb486207))
* **kitchen:** use `debian-10-master-py3` instead of `develop` [skip ci] ([0506a5c](https://github.com/saltstack-formulas/apt-formula/commit/0506a5c5db540d669cd0a61c16016f5cf3040037))
* **kitchen+travis:** upgrade matrix after `2019.2.2` release [skip ci] ([6187515](https://github.com/saltstack-formulas/apt-formula/commit/6187515e4395349448c6d0b4519c9037197a1a88))
* **travis:** apply changes from build config validation [skip ci] ([5bd314b](https://github.com/saltstack-formulas/apt-formula/commit/5bd314b90d8f90ddc2d702fdf256f90eeca1e358))
* **travis:** opt-in to `dpl v2` to complete build config validation [skip ci] ([0e4d905](https://github.com/saltstack-formulas/apt-formula/commit/0e4d9056b124a155ceacbcf92449b50c909fff2f))
* **travis:** run `shellcheck` during lint job [skip ci] ([8230b8b](https://github.com/saltstack-formulas/apt-formula/commit/8230b8b2f26703011f1e3654da19f7c6dafbb6cc))
* **travis:** update `salt-lint` config for `v0.0.10` [skip ci] ([fdb7822](https://github.com/saltstack-formulas/apt-formula/commit/fdb7822dc834da315222bdd092f486a30f0936d0))
* **travis:** use build config validation (beta) [skip ci] ([cf6a735](https://github.com/saltstack-formulas/apt-formula/commit/cf6a735ebb500657bb534badb2287a55f2e1c683))


### Documentation

* **contributing:** remove to use org-level file instead [skip ci] ([b2662ce](https://github.com/saltstack-formulas/apt-formula/commit/b2662ce3723cccd045ec96342e5ba3e364813398))
* **readme:** update link to `CONTRIBUTING` [skip ci] ([d2630f7](https://github.com/saltstack-formulas/apt-formula/commit/d2630f7cf15a30528e7d06e0efcb4d237bb35ea2))


### Features

* **unattended:** add newer options from upstream ([49ee29c](https://github.com/saltstack-formulas/apt-formula/commit/49ee29ce9ee371992225f5393f0f89811afdaeab))


### Performance Improvements

* **travis:** improve `salt-lint` invocation [skip ci] ([9d5102c](https://github.com/saltstack-formulas/apt-formula/commit/9d5102cb96be9ee2faa371940b6321663e97ce5f))

## [0.9.1](https://github.com/saltstack-formulas/apt-formula/compare/v0.9.0...v0.9.1) (2019-10-09)


### Bug Fixes

* **rubocop:** add fixes using `rubocop --safe-auto-correct` ([](https://github.com/saltstack-formulas/apt-formula/commit/67de777))
* **rubocop:** fix remaining errors manually ([](https://github.com/saltstack-formulas/apt-formula/commit/62d20bc))


### Continuous Integration

* **kitchen:** change `log_level` to `debug` instead of `info` ([](https://github.com/saltstack-formulas/apt-formula/commit/78a2a91))
* **kitchen+travis:** replace EOL pre-salted images ([](https://github.com/saltstack-formulas/apt-formula/commit/04847bb))
* **travis:** use `dist: bionic` ([](https://github.com/saltstack-formulas/apt-formula/commit/2ca242a))
* **yamllint:** add rule `empty-values` & use new `yaml-files` setting ([](https://github.com/saltstack-formulas/apt-formula/commit/55212e0))
* merge travis matrix, add `salt-lint` & `rubocop` to `lint` job ([](https://github.com/saltstack-formulas/apt-formula/commit/b50ef71))

# [0.9.0](https://github.com/saltstack-formulas/apt-formula/compare/v0.8.1...v0.9.0) (2019-08-07)


### Bug Fixes

* **repositories:** update spotify repo key ([00c936b](https://github.com/saltstack-formulas/apt-formula/commit/00c936b))


### Continuous Integration

* **kitchen+travis:** modify matrix to include `develop` platform ([a088ca5](https://github.com/saltstack-formulas/apt-formula/commit/a088ca5))


### Features

* **yamllint:** include for this repo and apply rules throughout ([03d15e9](https://github.com/saltstack-formulas/apt-formula/commit/03d15e9))

## [0.8.1](https://github.com/saltstack-formulas/apt-formula/compare/v0.8.0...v0.8.1) (2019-05-28)


### Bug Fixes

* **map.jinja:** typo and lookup order ([eda8517](https://github.com/saltstack-formulas/apt-formula/commit/eda8517))
* **map.jinja+tests:** add correct keyring for the OS ([0ff48e1](https://github.com/saltstack-formulas/apt-formula/commit/0ff48e1)), closes [#41](https://github.com/saltstack-formulas/apt-formula/issues/41)


### Code Refactoring

* Merge branch 'upstream/master' ([1496eed](https://github.com/saltstack-formulas/apt-formula/commit/1496eed))


### Continuous Integration

* **kitchen+travis:** update testing environment ([3fa2a58](https://github.com/saltstack-formulas/apt-formula/commit/3fa2a58))


### Documentation

* **kitchen:** update documentation ([530e22c](https://github.com/saltstack-formulas/apt-formula/commit/530e22c))
