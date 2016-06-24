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

- Sección 3, examina en detalle el grupo de servicios incluidos en la
  arquitectura.

- Sección 4, analiza los requerimientos principales considerados en la
  definición de la infraestructura de tecnologías.

- Sección 5, describe la arquitectura de los servicios.

- Finalmente la sección 6, discute la logística y sus retos.

2. Introducción
```````````````

Actualmente las tecnologías tienen un impacto creciente en la sociedad. Somos
testigos de grandes avances en telefonía, redes, mensajería instantánea, y otros
canales de comunicación.

La comunicación por medios electrónicos esta transformando la manera en que
trabajamos, el modo en que aprendemos y que nos relacionamos. Por otra parte, la
tecnología está cambiando la forma en que los gobiernos prestan servicios a sus
ciudadanos.

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
marco de la Ley de Telecomunicaciones 164, ratificado por el Decreto Supremo
1793. Las medidas antes mencionadas establecen un marco legal que describe la
relación que debe existir entre la administración pública, software libre y
los estándares abiertos en Bolivia.

Los mismos principios se establecen dentro de la Constitución Política del
Estado, renovado en febrero del 2009, y la Agenda Patriótica 2025. Ambos
establecen los principios de soberanía y, a los efectos de este documento, el
principio de la soberanía tecnológica.

Por otra parte, la Agenda Patriótica proporciona una lista de objetivos de
desarrollo en muchas categorías. Esos objetivos se fijan para ser alcanzados en
2025.
La meta número 11 de la agenda, en particular, establece los fundamentos
para el documento actual y muchos otros planes gubernamentales en curso: *la
soberanía y la transparencia en la gestión pública regida por los principios de:
no robar, no mentir, no ser flojo.*

3. Servicios
````````````

En esta sección se describe el conjunto de servicios que se incluyen en el
servicio de comunicaciones de la administración pública de Bolivia, propuesto.
Se dedica especial atención dedicada a las normas y protocolos que serán
adoptadas por cada servicio, el tipo y la magnitud de la población atendida, la
tecnología reemplazado y, finalmente, los recursos humanos necesarios.


3.1 Correo electrónico
----------------------

Los sistemas de correo electrónico han existido desde la década de los 60 y
ahora se han convertido en la herramienta de mensajería estándar y de mayor
confianza en internet. Gracias a la criptografía y el ascenso de las
infraestructuras de clave pública (PKI), los mensajes de correo electrónico
ahora han alcanzado el estado de los documentos legales en muchos países, entre
ellos Bolivia. Una característica importante del correo electrónico, es su
arquitectura descentralizada. La descentralización en este contexto significa lo
siguiente: cuando suscribirse a un servicio de correo electrónico con un
determinado proveedor, todavía somos capaces de intercambiar mensajes de correo
electrónico entre los usuarios de diferentes proveedores. Este nivel de
descentralización se logró gracias a la adopción de estándares abiertos. Las
normas adoptadas por los servicios de correo electrónico son los siguientes:

:SMTP: Protocolo Simple para Transferencia de Correo (Simple Mail Transfer
  Protocol).


  Utilizado por los servidores tanto para enviar y recibir mensajes. Utilizado
  por los clientes sólo para enviar mensajes.

:IMAP: Protocolo de acceso a mensajes de Internet.

  Utilizado por los servidores y clientes para recuperar el correo electrónico.

La capacidad de proporcionar la descentralización a través de la adopción de
estándares abiertos se considera una característica fundamental para cualquier
solución propuesta en este documento.

3.2 Chat
--------

La mensajería instantánea existía como concepto desde los años 60. Durante la
década del 90, IRC se a establecido como el protocolo dominante. En el 2000, se
propuso un nuevo estándar, abierto: Protocolo extensible de mensajería y
presencia (XMPP su sigla en ingles). Desde entonces, este protocolo a ganado
cada vez más importancia convirtiéndose en una de las herramientas más valiosas
para la mensajería instancia. Su importancia se basa en su extensibilidad junto
con su completa apertura. Al igual que el correo electrónico, XMPP puede
ejecutarse en servidores descentralizados. Esto hace que sea una opción
preferida como un protocolo de mensajería instantánea. Otra gran característica
es su capacidad para soportar comunicaciones de vídeo y audio gracias a sus
extensiones.

:XMPP: eXtensible Messaging and Presence Protocol


    extensiones: XEP 0166 - Jingle - soporte para sesiones multimedia

3.3 Llamadas Telefónicas
------------------------

El Protocolo de Iniciación de Sesión (SIP) es un protocolo de comunicaciones
para la señalización y el control de las sesiones de comunicación multimedia.
Las aplicaciones más comunes de la SIP están en la telefonía por Internet para
llamadas de voz y vídeo, así como la mensajería instantánea, sobre Protocolo de
Internet (IP).

El protocolo define los mensajes que se envían entre los puntos finales, que
rigen la creación, terminación y otros elementos esenciales de una llamada. SIP
se puede usar para crear, modificar y terminar sesiones consiste en uno o varios
flujos de medios. SIP es un protocolo de capa de aplicación diseñado para ser
independiente de la capa de transporte subyacente. Es un protocolo basado en
texto, que incorpora muchos elementos del Protocolo de transferencia de
hipertexto (HTTP) y el protocolo de transferencia de correo simple (SMTP).

SIP trabaja en conjunto con varios otros protocolos de capa de aplicación que
identifican y llevan los datos por la sesión. Identificación de los medios de
comunicación y la negociación se consigue con el Protocolo de Descripción de
Sesión (SDP). Para la transmisión de flujos de medios (voz, vídeo) SIP
normalmente emplea el Protocolo de transporte en tiempo real (RTP) o Protocolo
de transporte seguro en tiempo real (SRTP). Para las transmisiones seguras de
mensajes SIP, el protocolo se puede cifrar, por medio de una capa de transporte
seguro (Transport Layer Security; TLS).

3.4 Vídeo telefonía
-------------------

Vídeo telefonía comprende las tecnologías para la recepción y transmisión de
señales de audio y vídeo por los usuarios en diferentes ubicaciones, para la
comunicación entre las personas, en tiempo real.

Actualmente el uso de vídeo telefonía ha hecho incursiones significativas en el
gobierno, salud, educación y los medios de comunicación. Es particularmente útil
para las personas sordas o con impedimentos del habla que puede utilizar la
tecnología con el lenguaje de signos y también con un servicio de transmisión de
vídeo, y así como a las personas con problemas de movilidad o los que se
encuentran en lugares distantes y están en necesidad de tele-medicina o
servicios de tele-educación. También se utiliza en entornos comerciales y
corporativos para facilitar las reuniones y conferencias, por lo general entre
las partes que ya han establecido relaciones. Como todas las tecnologías de las
comunicaciones de larga distancia (como el teléfono e Internet), reduciendo la
necesidad de viajar a unir a la gente que la tecnología también contribuye a la
reducción de las emisiones de carbono, lo que contribuye a reducir el
calentamiento global.

Todo esto se puede realizar por medio del protocolo de iniciación de sesión
(SIP), para la simplificación de la instalación y de la gestión se puede usar
Elastix.

3.5 Gestión de Contactos
------------------------

En el contexto de las redes, existe el capital social, en el que la gente tiene
una ventaja debido a su ubicación en una red. Contactos en una red proporcionan
información, oportunidades y perspectivas que pueden ser beneficiosos para el
participante en la red. La mayoría de las estructuras sociales tienden a
caracterizarse por densos racimos de conexiones fuertes. La información dentro
de estos grupos tiende a ser bastante homogénea y redundante. La información no
redundante, se obtiene, a menudo; a través de contactos en diferentes grupos.

4. Requerimientos
`````````````````

4.1 Software Libre
------------------

El primer requisito para la implementación del servicio, es que cualquier
programa que se adopte, debe ser software libre. Las razones de este requisito
son a la vez técnicas y éticas. Desde hace muchos años, dentro de la industria
del software, se ha establecido que el software de código abierto ofrece
aplicaciones de una manera más rápida, con mejores resultados y menores costos.
La razón para ello es que los individuos y las empresas que desarrollan software
de código abierto (OSS) están constantemente capaz de confiar en los logros y el
apoyo de una comunidad mundial. Esto les da una ventaja extrema sobre proyectos
propios donde la calidad de un producto depende por completo de las personas que
están estrictamente dan acceso a ella. Los costos de OSS son también más bajos,
porque la mayoría de los productos no se aplican derechos de licencia, o vender
licencias que son más baratos que sus contra-partes propietarias.

La razón ética de este requisito se basa en el concepto de libertad. Una
definición de software libre podría ser: *El software libre es donde el usuario
controla el programa*. La forma en que un usuario puede controlar un programa es
por ser capaz de obtener acceso a su código fuente, pudiendo cambiarlo, pudiendo
redistribuirlo y usarlo para cualquier propósito.

Una consecuencia directa de la adopción del software libre es la transparencia.
La transparencia es de hecho uno de los elementos que hace para un mejor
gobierno.

4.2 Estándares Abiertos
-----------------------

Otro requisito es la adopción de estándares abiertos. de acuerdo al marco
europeo de interoperabilidad para Servicios de administración electrónica
paneuropea, un estándar abierto se refiere a un formato o protocolo que es:

- Someterse a una evaluación pública completa y el uso sin restricciones de una
  manera igualmente disponible para todas las partes;
- Sin ningún tipo de componentes o extensiones que tengan dependencias sobre
  formatos o protocolos que no cumplen con la definición de un estándar
  abierto a sí mismos;
- Libre de cláusulas jurídicas o técnicas que limiten su utilización por
  cualquiera de las partes o en cualquier modelo de negocio;
- Gestionado y desarrollado de forma independiente de cualquier proveedor
  individual en un proceso abierto a la participación equitativa de los
  competidores y terceros;
- Disponible en múltiples implementaciones completas por proveedores de la
  competencia, o como una implementación completa igualmente a disposición de
  todas las partes.

Este conjunto de reglas es fundamental para el logro de la interoperabilidad.
Una definición breve de interoperabilidad, podemos definirla como: *La capacidad
de las organizaciones gubernamentales para compartir información e integrar los
procesos de información y de negocios mediante el uso de estándares comunes*.

El objetivo principal de este requisito, es promover la implementación de
servicios plenamente interoperables prestados por la administración pública de
Bolivia.

4.3 Servicios Soberanos
-----------------------

Este requisito cumple con las directrices dictadas por la Agenda Patriótica
2025, que establece firmemente el concepto de Soberanía Tecnológica. Hoy en día
hemos sido testigos del surgimiento de servicios en la nube en todos sus
sabores: Software como Servicio (SaaS), plataforma como servicio (PaaS) e
Infraestructura como Servicio (IaaS). Estos patrones muestran una nueva y
emocionante manera de hacer que el software que sin duda merecen atención. Pero
también plantean un nuevo problema: la mayoría de estos servicios en la nube se
asignan en servidores fuera de las fronteras del estado y el mantenimiento y
desarrollo de las comunidades y las empresas que operaban en el extranjero. Este
patrón termina limitando las oportunidades para la industria nacional de
software, y comunidades para prosperar y crecer. Además, este patrón viola el
concepto de soberanía tecnológica, siempre que el usuario se suscribe a
servicios extranjeros. La solución a este problema es el despliegue de servicios
en la nube desde dentro de las fronteras del Estado. A raíz de este requisito la
industria del software será capaz de adoptar y desarrollar servicios en la nube,
y las nuevas tecnologías en general, totalmente, al tiempo que reduce
drásticamente su dependencia de la investigación y el desarrollo extranjera.

4.4 Integración
---------------

directorios de contactos de la manera más integrada posible.
Un enfoque particular que se pone en la realidad específica del sector público,
que se caracteriza por los siguientes aspectos:


- Una estructura altamente jerárquica
- Múltiples instituciones
- El cambio constante de personal
- Múltiples tipos de canales de comunicación


Uno de los problemas encontrados cuando se trata de sistemas de gestión de
contactos es que por lo general se dan por vencidos en la integrabilidad con el
fin de servir a una realidad específica, tales como la administración pública.
El principal objetivo de este requisito es inspirar a los servicios de
comunicación donde se requiere al usuario un mínimo esfuerzo para la gestión de
contactos.

5. Arquitectura propuesta
`````````````````````````

5.1 Introducción
----------------

Para poder manejar las diferentes entidades de manera descentralizada pero con
total interoperabilidad, se requiere tener una Arquitectura orientada a
servicios y contemplar los casos donde las entidades más pequeñas, preferirán
utilizar la infraestructura de las entidades más grandes. Para mantener sus
datos siempre disponibles.


5.2 Arquitectura orientada a Servicios
--------------------------------------

La Arquitectura Orientada a Servicios SOA, del inglés Service Oriented
Architecture. Es un paradigma de arquitectura para diseñar y desarrollar
sistemas distribuidos. Las soluciones  SOA  han sido creadas para satisfacer los
objetivos de facilidad y flexibilidad de integración con sistemas legados,
alineación directa a los procesos de negocio reduciendo costos de implementación
, innovación de servicios a clientes y una adaptación ágil ante cambios
incluyendo reacción temprana.

Permite la creación de sistemas de información altamente escalables que reflejan
el funcionamiento interno de la organización, a su vez brinda una forma bien
definida de exposición e invocación de servicios (comúnmente pero no
exclusivamente servicios web), lo cual facilita la interacción entre diferentes
sistemas propios o de terceros.

5.3 Diagrama de Servicios
-------------------------

+------+-----------+-----------------+-----------+
| Chat | Telefonía | Vídeo Telefonía | Contactos |
+------+-----------+-----------------+-----------+
|            Capa de interoperabilidad           |
+------------------------------------------------+
|                Directorio Estatal              |
+------------------------------------------------+

6. Implementación
`````````````````

6.1 Directorio Estatal
----------------------

Para tener un directorio estatal, se debe considerar que la información que se
manejara, cambia constantemente, y se debe contemplar personal para la
actualización continua de esta, fuera del personal técnico, para el
mantenimiento del servicio.

Cómo alternativas de herramientas para este servicio, podemos pensar en utilizar

:LDAP: Protocolo Ligero/Simplificado de Acceso a Directorios, de sus siglas en
       ingles Lightweight Directory Access Protocol; es un protocolo a nivel de
       aplicación que permite el acceso a un servicio de directorio ordenado y
       distribuido para buscar diversa información en un entorno de red. LDAP
       también se considera una base de datos (aunque su sistema de
       almacenamiento puede ser diferente) a la que pueden realizarse consultas.


:Base de Datos: También es posible utilizar una base de datos, tanto relacional
                como no relacional, para mantener la información del directorio,
                pero es necesario tener una capa de autentificación como
                servicio, para la federación del directorio.

6.2 Interoperabilidad
---------------------

Para poder federar el directorio, se necesita un servicio de identificación,
para este fin podemos utilizar OpenID, que es un estándar de identificación
digital descentralizado, con el que un usuario puede identificarse en una
página web a través de una URL (o un XRI en la versión actual) y puede ser
verificado por cualquier servidor que soporte el protocolo.

6.3 Servicios
-------------

6.3.1 Contactos
~~~~~~~~~~~~~~~

Para la gestión de contactos, utilizaremos Funanbol, que es un servidor de
aplicaciones móviles, que proporciona push email, libreta de direcciones
(agenda) y calendario (PIM), sincronización de datos, provisión de aplicaciones
y Device Management para dispositivos móviles y PC, utilizando protocolos
estándar como SyncML. Para los usuarios, esto implica funcionalidades semejantes
a las de BlackBerry en otros dispositivos de mano como teléfonos móviles.

Esta herramienta requiere un proceso de instalación extenso y poco
mantenimiento, por tanto el personal para este, no necesariamente debe ser
especializado

6.3.2 Chat
~~~~~~~~~~

6.3.3 Telefonía
~~~~~~~~~~~~~~~

6.3.4 Vídeo Llamadas
~~~~~~~~~~~~~~~~~~~~



Acrónimos
`````````

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

Bibliografía
````````````

* The state of mobile XMPP in 2016 -
  `https://gultsch.de/xmpp_2016.html <https://gultsch.de/xmpp_2016.html>`_
* https://fsfe.org/activities/os/def.en.html
* http://ec.europa.eu/idabc/servlets/Docd552.pdf?id=19529
