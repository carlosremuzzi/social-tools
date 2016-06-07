########################################################
Herramientas Social para Agetic y Administración Publica
########################################################

Introducción
************

El presente documento se refiere a una serie de propuestas para la implementación de un servicio de comunicación entre los funcionarios públicos del Estado Plurinacional de Bolivia.
Las funcionalidades del servicio incluyen un sistema de chat, redes sociales, un sistema de vídeo conferencia y por ultimo una solución para llamadas de voz.  
Las herramientas utilizadas tienen que adherir a los principios de software libre y de soberanía tecnológica.
En particular se requiere que las soluciones utilizadas :

* implementen software libre
* implementen estándares abiertos 
* no sean alojadas en el exterior
* tengan integración con LDAP
* permitan la búsqueda de usuarios
* permitan la organización de usuarios en grupos


Análisis preliminar
*******************

Software considerado:

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
