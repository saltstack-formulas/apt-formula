
Changelog
=========

`0.10.3 <https://github.com/saltstack-formulas/apt-formula/compare/v0.10.2...v0.10.3>`_ (2020-10-19)
--------------------------------------------------------------------------------------------------------

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **pre-commit:** add to formula [skip ci] (\ `a472351 <https://github.com/saltstack-formulas/apt-formula/commit/a472351b988d980a6a8dcf0c3d138ce547f2db65>`_\ )
* **pre-commit:** add to formula [skip ci] (\ `fe75b59 <https://github.com/saltstack-formulas/apt-formula/commit/fe75b5923112b88f16497a6e8c7890830874410e>`_\ )
* **pre-commit:** add to formula [skip ci] (\ `d9f480a <https://github.com/saltstack-formulas/apt-formula/commit/d9f480a4a435ffe895d435b9870d95a7f0d06b97>`_\ )
* **pre-commit:** enable/disable ``rstcheck`` as relevant [skip ci] (\ `4cf4741 <https://github.com/saltstack-formulas/apt-formula/commit/4cf4741228a1210c52f994bec071bfaf6e45609d>`_\ )
* **pre-commit:** finalise ``rstcheck`` configuration [skip ci] (\ `2d520d2 <https://github.com/saltstack-formulas/apt-formula/commit/2d520d2f533de5072b45cb47fbc949b92a2eae97>`_\ )

Tests
^^^^^


* **repositories:** change to a repo with no key expiration (\ `e677b78 <https://github.com/saltstack-formulas/apt-formula/commit/e677b7891e99bd731981526453a041645f002a78>`_\ )

`0.10.2 <https://github.com/saltstack-formulas/apt-formula/compare/v0.10.1...v0.10.2>`_ (2020-09-21)
--------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **preferences,repositories:** fix clean parameter (\ `50e02fb <https://github.com/saltstack-formulas/apt-formula/commit/50e02fba148d1e040832cefb2d716191046fafb0>`_\ )

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **kitchen:** use ``saltimages`` Docker Hub where available [skip ci] (\ `5fbc45d <https://github.com/saltstack-formulas/apt-formula/commit/5fbc45d052ef2d8fd4682e6a07fd4d4189043324>`_\ )

`0.10.1 <https://github.com/saltstack-formulas/apt-formula/compare/v0.10.0...v0.10.1>`_ (2020-05-29)
--------------------------------------------------------------------------------------------------------

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **gemfile.lock:** add to repo with updated ``Gemfile`` [skip ci] (\ `e657de0 <https://github.com/saltstack-formulas/apt-formula/commit/e657de0fbc41e9078ce5c4b881096736a3b45e91>`_\ )
* **kitchen:** avoid using bootstrap for ``master`` instances [skip ci] (\ `7aebed6 <https://github.com/saltstack-formulas/apt-formula/commit/7aebed62a71520ccee6a2fb96601899787674a09>`_\ )
* **travis:** add notifications => zulip [skip ci] (\ `e22b8f0 <https://github.com/saltstack-formulas/apt-formula/commit/e22b8f062ee2f9d7078a5f22bf9c787c6f11dc22>`_\ )
* **travis:** use ``major.minor`` for ``semantic-release`` version [skip ci] (\ `52df5ca <https://github.com/saltstack-formulas/apt-formula/commit/52df5ca1f0a0c70f587d59a99bb351e70bc73750>`_\ )
* **workflows/commitlint:** add to repo [skip ci] (\ `63959a0 <https://github.com/saltstack-formulas/apt-formula/commit/63959a055314cec3f6e688c64512ede6daa3f9fa>`_\ )

Documentation
^^^^^^^^^^^^^


* **readme:** show only one level in table of contents (\ `081c77a <https://github.com/saltstack-formulas/apt-formula/commit/081c77ad01a4eb8458426a66f2195cb08b892e31>`_\ )
* **readme.rst:** add doc for apt_conf state + other minor update (\ `cf78277 <https://github.com/saltstack-formulas/apt-formula/commit/cf78277ce51f4280a52583687a886c1965e90a40>`_\ )

`0.10.0 <https://github.com/saltstack-formulas/apt-formula/compare/v0.9.1...v0.10.0>`_ (2019-12-18)
-------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **fluorine:** add name so no virtual_packages (\ `57bfc61 <https://github.com/saltstack-formulas/apt-formula/commit/57bfc61b2c8b79e09d51da58d11d3eaf34a50085>`_\ )
* **release.config.js:** use full commit hash in commit link [skip ci] (\ `ca4ba6e <https://github.com/saltstack-formulas/apt-formula/commit/ca4ba6e370a0885689931d6919b89cf5d77517ce>`_\ )
* **travis:** quote pathspecs used with ``git ls-files`` [skip ci] (\ `4303495 <https://github.com/saltstack-formulas/apt-formula/commit/4303495139f4577d7d0bedd934811aaa2b8aa2f6>`_\ )

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **gemfile:** restrict ``train`` gem version until upstream fix [skip ci] (\ `5178f0d <https://github.com/saltstack-formulas/apt-formula/commit/5178f0d13facfa4aa27b73f2f76648dbeb486207>`_\ )
* **kitchen:** use ``debian-10-master-py3`` instead of ``develop`` [skip ci] (\ `0506a5c <https://github.com/saltstack-formulas/apt-formula/commit/0506a5c5db540d669cd0a61c16016f5cf3040037>`_\ )
* **kitchen+travis:** upgrade matrix after ``2019.2.2`` release [skip ci] (\ `6187515 <https://github.com/saltstack-formulas/apt-formula/commit/6187515e4395349448c6d0b4519c9037197a1a88>`_\ )
* **travis:** apply changes from build config validation [skip ci] (\ `5bd314b <https://github.com/saltstack-formulas/apt-formula/commit/5bd314b90d8f90ddc2d702fdf256f90eeca1e358>`_\ )
* **travis:** opt-in to ``dpl v2`` to complete build config validation [skip ci] (\ `0e4d905 <https://github.com/saltstack-formulas/apt-formula/commit/0e4d9056b124a155ceacbcf92449b50c909fff2f>`_\ )
* **travis:** run ``shellcheck`` during lint job [skip ci] (\ `8230b8b <https://github.com/saltstack-formulas/apt-formula/commit/8230b8b2f26703011f1e3654da19f7c6dafbb6cc>`_\ )
* **travis:** update ``salt-lint`` config for ``v0.0.10`` [skip ci] (\ `fdb7822 <https://github.com/saltstack-formulas/apt-formula/commit/fdb7822dc834da315222bdd092f486a30f0936d0>`_\ )
* **travis:** use build config validation (beta) [skip ci] (\ `cf6a735 <https://github.com/saltstack-formulas/apt-formula/commit/cf6a735ebb500657bb534badb2287a55f2e1c683>`_\ )

Documentation
^^^^^^^^^^^^^


* **contributing:** remove to use org-level file instead [skip ci] (\ `b2662ce <https://github.com/saltstack-formulas/apt-formula/commit/b2662ce3723cccd045ec96342e5ba3e364813398>`_\ )
* **readme:** update link to ``CONTRIBUTING`` [skip ci] (\ `d2630f7 <https://github.com/saltstack-formulas/apt-formula/commit/d2630f7cf15a30528e7d06e0efcb4d237bb35ea2>`_\ )

Features
^^^^^^^^


* **unattended:** add newer options from upstream (\ `49ee29c <https://github.com/saltstack-formulas/apt-formula/commit/49ee29ce9ee371992225f5393f0f89811afdaeab>`_\ )

Performance Improvements
^^^^^^^^^^^^^^^^^^^^^^^^


* **travis:** improve ``salt-lint`` invocation [skip ci] (\ `9d5102c <https://github.com/saltstack-formulas/apt-formula/commit/9d5102cb96be9ee2faa371940b6321663e97ce5f>`_\ )

`0.9.1 <https://github.com/saltstack-formulas/apt-formula/compare/v0.9.0...v0.9.1>`_ (2019-10-09)
-----------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **rubocop:** add fixes using ``rubocop --safe-auto-correct`` (\ ` <https://github.com/saltstack-formulas/apt-formula/commit/67de777>`_\ )
* **rubocop:** fix remaining errors manually (\ ` <https://github.com/saltstack-formulas/apt-formula/commit/62d20bc>`_\ )

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **kitchen:** change ``log_level`` to ``debug`` instead of ``info`` (\ ` <https://github.com/saltstack-formulas/apt-formula/commit/78a2a91>`_\ )
* **kitchen+travis:** replace EOL pre-salted images (\ ` <https://github.com/saltstack-formulas/apt-formula/commit/04847bb>`_\ )
* **travis:** use ``dist: bionic`` (\ ` <https://github.com/saltstack-formulas/apt-formula/commit/2ca242a>`_\ )
* **yamllint:** add rule ``empty-values`` & use new ``yaml-files`` setting (\ ` <https://github.com/saltstack-formulas/apt-formula/commit/55212e0>`_\ )
* merge travis matrix, add ``salt-lint`` & ``rubocop`` to ``lint`` job (\ ` <https://github.com/saltstack-formulas/apt-formula/commit/b50ef71>`_\ )

`0.9.0 <https://github.com/saltstack-formulas/apt-formula/compare/v0.8.1...v0.9.0>`_ (2019-08-07)
-----------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **repositories:** update spotify repo key (\ `00c936b <https://github.com/saltstack-formulas/apt-formula/commit/00c936b>`_\ )

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **kitchen+travis:** modify matrix to include ``develop`` platform (\ `a088ca5 <https://github.com/saltstack-formulas/apt-formula/commit/a088ca5>`_\ )

Features
^^^^^^^^


* **yamllint:** include for this repo and apply rules throughout (\ `03d15e9 <https://github.com/saltstack-formulas/apt-formula/commit/03d15e9>`_\ )

`0.8.1 <https://github.com/saltstack-formulas/apt-formula/compare/v0.8.0...v0.8.1>`_ (2019-05-28)
-----------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **map.jinja:** typo and lookup order (\ `eda8517 <https://github.com/saltstack-formulas/apt-formula/commit/eda8517>`_\ )
* **map.jinja+tests:** add correct keyring for the OS (\ `0ff48e1 <https://github.com/saltstack-formulas/apt-formula/commit/0ff48e1>`_\ ), closes `#41 <https://github.com/saltstack-formulas/apt-formula/issues/41>`_

Code Refactoring
^^^^^^^^^^^^^^^^


* Merge branch 'upstream/master' (\ `1496eed <https://github.com/saltstack-formulas/apt-formula/commit/1496eed>`_\ )

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **kitchen+travis:** update testing environment (\ `3fa2a58 <https://github.com/saltstack-formulas/apt-formula/commit/3fa2a58>`_\ )

Documentation
^^^^^^^^^^^^^


* **kitchen:** update documentation (\ `530e22c <https://github.com/saltstack-formulas/apt-formula/commit/530e22c>`_\ )
