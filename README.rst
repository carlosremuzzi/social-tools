########################################################
Herramientas Social para Agetic y Administración Publica
########################################################

Contexto
********

El presente proyecto se desarrolla en el marco del Plan de Implementación de Software Libre y Estándares Abiertos del Estado Plurinacional de Bolivia.

El objetivo especifico del proyecto es la implementación de un servicio de comunicación del Estado entre funcionarios públicos.
Las herramientas utilizadas para este proyecto tienen que respectar los principios de software libre y de soberanía tecnológica.
En particular se requiere que 

 


análisis preliminar
*******************

software considerados:

* `ring.cx <http://ring.cx>`_
* `tox.chat <http://tox.chat>`_
* `kontalk.org <http://kontalk.org>`_
* `jitsi.org <http://jitsi.org>`_
* `gajim.org <http://gajim.org>`_
* `rocket.chat <http://rocket.chat>`_
* `conversationsi.im <http://conversations.im>`_
* `jitsi.org <http://jitsi.org>`_
* `lumicall.org <http://lumicall.org>`_
* `Jingle Nodes <https://code.google.com/archive/p/jinglenodes>`_

Propuesta de herramientas
*************************

Servidores
==========

XMPP
----

* ejabberd
   Nota: se instalara servidores con extensión XEP 0166: Jingle
* Salut à Toi

SIP
---
* asterisk
* elastix

Clientes
========

XMPP Desktop
------------
* jitsi

XMPP Mobile (Android)
---------------------
* conversations
* beem (implementación con XEP 0166)

SIP Desktop
-----------
* linphone

SIP Mobile (Android)
--------------------
* linphone
* casca

Propuesta de arquitectura
*************************

.. old link
   image:: img/diagramaFederacionXMPP.png

.. image:: https://gitlab.geo.gob.bo/agetic/herramientas-social/raw/master/img/diagramaFederacionXMPP.png
