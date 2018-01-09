apt
===

Formulas to update, upgrade, and dist-upgrade within apt.

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

Available states
================

.. contents::
    :local:

``apt.dist_upgrade``
--------------------

Runs ``apt-get dist-upgrade``.

``apt.update``
--------------

Runs ``apt-get update``.

``apt.upgrade``
---------------

Runs ``apt-get upgrade``.

``apt.repositories``
--------------------

Allows you to configure and manage repositories from pillar. Check ``pillar.example``
to see possible values. If used and no repositories are provided, sane default
values from ``map.jinja`` are used.

Check https://wiki.debian.org/SourcesList for an explanation about the resulting
files structure.

``apt.preferences``
-------------------

Allows you to configure and manage apt's preferences from pillar. Check
``pillar.example`` to see possible values. If used and no repositories are
provided, sane default values from ``map.jinja`` are used.

Check https://wiki.debian.org/AptPreferences?action=show&redirect=preferences
and ``man 5 apt_preferences`` for an explanation about the resulting files structure.

``apt.ppa``
-----------
Installs ``python-software-properties``
(``$ /usr/bin/apt-add-repository ppa:user/repository``).

``apt.unattended``
------------------
Installs and configures ``unattended-upgrades``

``apt.transports.debtorrent``
-------------------------------
Installs ``apt-transport-debtorrent``.

``apt.transports.https``
--------------------------
Installs ``apt-transport-https``.

