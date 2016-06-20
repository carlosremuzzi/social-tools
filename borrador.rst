Servicio de Comunicación Libre para Bolivia
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. contents::

1. Propósito de este documento
``````````````````````````````
El propósito de este documento es describir la arquitectura de un servicio de
comunicación, diseñado para la administración pública de Bolivia.

El documento es estructurado como sigue.

- Sección 2, introduce al contexto general y el análisis de marco legislativo,
  concerniente a la agenda digital Boliviana.

- Sección 3, examina en detalle el grupo de servicios incluidos en la arquitectura.

- Sección 4, analiza los requerimientos principales considerados en la definición
  de la infraestructura de tecnologías.

- Sección 5, describe la arquitectura de los servicios.

- Finalmente la sección 6, discute la logística y sus retos.

2. Introducción
```````````````

Actualmente las tecnologías tienen un impacto creciente en la sociedad.

Somos testigos de grandes avances en telefonía, redes, mensajería instantánea, y
otros canales de comunicación.

La comunicación por medios electrónicos esta transformando la manera en que
trabajamos, el modo en que aprendemos y que nos relacionamos.

Por otra parte, la tecnología está cambiando la forma en que los gobiernos
prestan servicios a sus ciudadanos.

La calidad y variedad de dichos servicios, dependen, entre otras cosas; en la
calidad de su infraestructura.

Debido a esta razón, cada vez más gobiernos de todo el mundo están haciendo
movimientos hacia la mejora y ampliación de sus servicios web y herramientas de
comunicación.

En este documento, nos centramos en la administración pública de Bolivia y la
forma en que su infraestructura de tecnologías de información y comunicación
podría ser mejorada.

2.1 Marco Legal
---------------

En este documento se encuentra sus fundamentos en las decisiones tomadas en el
marco de la Ley de Telecomunicaciones N ° 164, ratificado por el Decreto Supremo
1793. Las medidas antes mencionadas establecen un marco legal que describe la
relación que debe existir entre la administración pública, gratuita software y
los estándares abiertos en Bolivia.

Los mismos principios se establecen dentro de la Constitución del Estado,
renovado en febrero de 2009, y la Agenda Patriótica 2025. Ambos se establecen
los principios de soberanía y, a los efectos de este documento, el principio de
la soberanía tecnológica.

Por otra parte, la Agenda Patriótica proporciona una lista de objetivos de
desarrollo en muchas categorías. Esos objetivos se fijan para ser alcanzado en
2025.
La meta número 11 del orden del día, en particular, establece los fundamentos
para el documento actual y muchos otros planes gubernamentales en curso: *la
soberanía y la transparencia en la gestión pública regida por los principios de:
no robar, no mentir, no hacer ser flojo.*

2.2 State of the art
--------------------

3. Services
```````````

3.1 E-mail
----------

imap smtp
description

standards

replaced technology

population served

human resources required

3.2 Chat
--------
xmpp

3.3 Phone calls
---------------
xmpp sip

3.4 Video calls
---------------
xmpp sip

3.5 Contact management
----------------------
ldap openid

4. Requirements
```````````````

4.1 Free Software
-----------------

A first requirement for the implementation of the service is that any program adopted should be free and open source software (FOSS). The reasons for this requirement are both technical and ethical. Since many years, within the software industry, it has been established that open source software delivers applications in a faster manner,  with better results and cheaper costs. The reason for it is that individuals and enterprises that develop open source software (OSS) are constantly able to rely on the achievements and the support of a worldwide community. This gives them an extreme advantage over proprietary projects where the quality of a product depends entirely on the people that are strictly given access to it. The costs of OSS are also lower, because most of the products do not apply licence fees, or sell licences which are cheaper that their proprietary counterparts. 

The ethical reason of this requirement relies on the concept of freedom. One definition of free software could be: *Free Software is where the user controls the program*. The way a user can control a program is by being able to get access to its source code, being able to change it, being able to redistribute it and use it for any purpose. 

One direct consequence of the adoption of FOSS is transparency. Transparency is indeed one of the elements that makes for a better government.

4.2 Open Standards
------------------

Another requirement is the adoption of open standards.According to the EUROPEAN INTEROPERABILITY FRAMEWORK
FOR PAN-EUROPEAN eGOVERNMENT SERVICES an Open Standard refers to a format or protocol that is:

- subject to full public assessment and use without constraints in a manner equally available to all parties;
- without any components or extensions that have dependencies on formats or protocols that do not meet the definition of an Open Standard themselves;
- free from legal or technical clauses that limit its utilisation by any party or in any business model;
- managed and further developed independently of any single vendor in a process open to the equal participation of competitors and third parties;
- available in multiple complete implementations by competing vendors, or as a complete implementation equally available to all parties.

This set of rules is fundamental towards the achievement of interoperability. By a short definition we can definite interoperability as: *The ability of government organisations to share information and integrate information and business processes by use of common standards*.
The main goal of this requirement is therefore to inspire the implementation of fully interoperable services provided by the public administration of Bolivia.


4.3 Non-foreign services
------------------------

This requirement fulfills the guidelines dictated by the Patriotic Agenda 2025 which firmly establishes the concept of Technological Sovereignty.
Nowadays we have witnessed the rise of cloud services in all of their flavours: Software as a Service (SaaS), Platform as a Service (PaaS) and Infrastructures as a Service (IaaS).
These patterns display a new and exciting way of making software which certainly deserve attention.
But they also pose a new problem: most of such cloud services are allocated on servers outside the state's borders and are maintained and developed by communities and enterprises that operated abroad.
This pattern ends up limiting the opportunities for the national software industry and communities to thrive and grow.
Furthermore, this pattern violates the concept of technological sovereignty as long as the user subscribes to foreign services.
The solution to this problem is to deploy cloud services from within the State's borders. Following this requirement the software industry will be able to fully adopt and develop cloud services, and new technologies in general, while drastically reducing their dependency on foreign research and development.

4.4 Integration
---------------

The requirement on integration refers to the ability of managing contacts and directories of contacts in the most integrated way possible.
A particular focus is put on the specific public sector reality, which is characterized by the following aspects:

- a highly hierarchical structure.
- multiple institutions.
- constant change of personnel.
- multiple types of communication channels

One of the challenges encountered when dealing with contact management systems is that they usually give up on integrability in order to serve a specific reality, such as the public administration.  
 The main goal of this requirement is to inspire communication services where the user is required a minimal effort for managing contacts.  

5. Proposed architecture
````````````````````````

6. Deployment
`````````````

Acronyms
````````

+------+--------------------------------------------+
| FOSS | Free and Open Source  Software             |
+------+--------------------------------------------+
| IaaS | Infrastructure as a Service                |
+------+--------------------------------------------+
| IMAP | Internet Message Access Protocol           |
+------+--------------------------------------------+
| LDAP | Lightweight Directory Access Protocol      |
+------+--------------------------------------------+
| OSS  | Open Source  Software                      |
+------+--------------------------------------------+
| PaaS | Platform as a Service                      |
+------+--------------------------------------------+
| PKI  | Public Key Infrastructure                  |
+------+--------------------------------------------+
| SIP  | Session Initiation Protocol                |
+------+--------------------------------------------+
| SMTP | Simple Mail Transfer Protocol              |
+------+--------------------------------------------+
| SaaS | Software as a Service                      |
+------+--------------------------------------------+
| SOA  | Service-Oriented Architecture              |
+------+--------------------------------------------+
| XEP  | XMPP Extension Protocol                    |
+------+--------------------------------------------+
| XML  | Extensible Markup Language                 |
+------+--------------------------------------------+
| XMPP | Extensible Messaging and Presence Protocol |
+------+--------------------------------------------+

Bibliography
```````````````

* The state of mobile XMPP in 2016 - `https://gultsch.de/xmpp_2016.html <https://gultsch.de/xmpp_2016.html>`_
* https://fsfe.org/activities/os/def.en.html
* http://ec.europa.eu/idabc/servlets/Docd552.pdf?id=19529


