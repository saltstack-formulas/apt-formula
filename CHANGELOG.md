# Changelog

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
