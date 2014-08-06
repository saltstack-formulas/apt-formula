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

``apt.dist-upgrade``
--------------------

Runs ``apt-get dist-upgrade``.

``apt.update``
--------------

Runs ``apt-get update``.

``apt.upgrade``
---------------

Runs ``apt-get upgrade``.


``apt.ppa``
-------------
Installs ``python-software-properties``
(``$ /usr/bin/apt-add-repository ppa:user/repository``).


``apt.transports.debtorrent``
-------------------------------
Installs ``apt-transport-debtorrent``.

``apt.transports.https``
--------------------------
Installs ``apt-transport-https``.

