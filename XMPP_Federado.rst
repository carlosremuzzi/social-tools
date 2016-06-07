Comunicación Gubernamental
^^^^^^^^^^^^^^^^^^^^^^^^^^

.. contents::

Introducción
````````````

Actualmente, todos nos comunicamos, ya sea con la familia o compañeros de
trabajo, y sabemos, gracias a Edward Snowden, que estas conversaciones nunca
fueron privadas. Pero podemos utilizar algunas herramientas para tener un
sistema de comunicación federado y seguro, Basado en XMPP, LDAP y SIP.

Sabemos que para tener un servidor XMPP seguro debemos tener como minimo esto:

 - Un certificado SSL
 - Que la configuración del servidor no permita ninguna conmunicacion en texto plano
 - y que soporte XEP-198

(XMPP Seguro)[http://wiki.xmpp.org/web/Securing_XMPP]


Arquitectura General
````````````````````

Como esquema general tenemos

 - Un servidor de todas las entidades gubernamentales (publico.gob.bo)
 - Cada institución publica puede definir si mantiene sus propios servidores o
   si utiliza el servidor gubernamental (Federalización)

.. image:: img/diagramaFederacionXMPP.png
  :width: 100%

