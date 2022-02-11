# -*- coding: utf-8 -*-
# vim: ft=yaml
---
apt:
  remove_preferences: true
  clean_preferences_d: true

  preferences:
    00-rspamd:
      package: rspamd
      pin: origin rspamd.com
      priority: 650
    01-all:
      pin: release stable
      priority: 610
    02-all:
      pin: release testing
      priority: 600
    03-all:
      pin: release unstable
      priority: 50
