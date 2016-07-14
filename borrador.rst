Servicio de Comunicación Libre para Bolivia
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. include:: Configuración.rst

.. contents::

:sinnumeracion:`Acrónimos`

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


Propósito de este documento
```````````````````````````

El propósito de este documento es describir la arquitectura de un servicio de
comunicación, diseñado para la administración pública de Bolivia.

Las premisas para este servicio, son:

- Cada institución es independiente, para la gestión de los datos de su personal
  que se deben actualizar.
- Es un servicio con cifrado (La comunicación es privada).
- Los servicios son Federados (Cada entidad es responsable de sus datos, y
  se relaciona con las demás de manera transparente).
- Se tendrá un centro de datos principal, donde se albergaran a todas las
  instituciones y las que deseen pueden manejar sus propios centros.

El documento es estructurado como sigue.

- Sección `Introducción`_, introduce al contexto general y el análisis de marco legislativo,
  concerniente a la agenda digital Boliviana.

- Sección `Servicios`_, examina en detalle el grupo de servicios incluidos en la
  arquitectura.

- Sección `Requerimientos`_, analiza los requerimientos principales considerados en la
  definición de la infraestructura de tecnologías.

- Sección `Arquitectura propuesta`_, describe la arquitectura de los servicios.

- Finalmente la sección `Implementación`_, discute la logística y sus retos.

Introducción
```````````````

Con el desarrollo de las tecnologías de la información, la sociedad ha progresivamente
adoptado una variedad de métodos de comunicación como los teléfonos fijos, celulares, SMS,
MMS, fax, buzón de voz, correo electrónico, audio conferencia y vídeo conferencia.
Junto a el avance de estas tecnologías se registra un aumentos de las soluciones y servicios
de información y comunicación ofrecidos por los gobiernos. En este contexto se identifican 
una serie de problemas en relación a las soluciones desarrolladas en gobierno
electrónico: la capacidad de los sistemas de compartir la misma plataforma y
tener un sistema unificado de manejo; como estos sistemas pueden lograr una coordinación cross-regional;
la habilidad de simplificar la herramientas y los dispositivos de comunicación;
y la capacidad de integrar orgánicamente la infraestructura de red con una reducción en los costos y un
aumento en la calidad del servicio :cite:`weihua2011` .

El el caso del Estado Boliviano, una respuesta a estos problemas es el Servicio de Comunicación propuesto con el presente documento. 
El sistema esta pensado para alcanzar a toda la red de funcionarios públicos del estado y
su implementación esta inspirada en los principios de la Agenda Patriótica 2025 del Estado Plurinacional De Bolivia. 

Marco legal
---------------

Este documento encuentra sus fundamentos en las decisiones tomadas en el
marco de la Ley de Telecomunicaciones 164, reglamentada por el Decreto Supremo
1793. Este marco legal que describe la
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
no robar, no mentir, no ser flojo* :cite:`agetic2016plange`.

Servicios
````````````

En esta sección se describe el conjunto de servicios que se incluyen en el
servicio propuesto de comunicaciones de la administración pública de Bolivia.
Se dedica especial atención a las normas y protocolos que serán adoptados por
cada servicio, el tipo y la magnitud de la población atendida, la tecnología a
reemplazar, y finalmente, los recursos humanos necesarios.


Correo electrónico
----------------------

Los sistemas de correo electrónico han existido desde la década de los 60 y
ahora se han convertido en la herramienta de mensajería estándar y de mayor
confianza en Internet :cite:`egan2008inbox`. Gracias a la criptografía y el ascenso de las
infraestructuras de clave pública (PKI), los mensajes de correo electrónico
ahora han alcanzado el estado de los documentos legales en muchos países, entre
ellos Bolivia. Una característica importante del correo electrónico es su
arquitectura descentralizada. La descentralización en este contexto significa lo
siguiente: cuando nos suscribimos a un servicio de correo electrónico con un
determinado proveedor, todavía somos capaces de intercambiar mensajes de correo
electrónico entre los usuarios de diferentes proveedores. Este nivel de
descentralización se logró gracias a la adopción de estándares abiertos. Las
normas adoptadas por los servicios de correo electrónico son las siguientes:

:SMTP: Protocolo Simple para Transferencia de Correo (Simple Mail Transfer
  Protocol).


  Utilizado por los servidores tanto para enviar y recibir mensajes. Utilizado
  por los clientes sólo para enviar mensajes.

:IMAP: Protocolo de acceso a mensajes de Internet.

  Utilizado por los servidores y clientes para recuperar el correo electrónico.

La capacidad de proporcionar la descentralización a través de la adopción de
estándares abiertos se considera una característica fundamental para cualquier
solución propuesta en este documento.

Para cifrar el correo podemos usar la criptografía de clave pública, en la que
los usuarios pueden publicar cada una clave pública que otros pueden utilizar
para cifrar mensajes a las mismas, mientras se mantiene una clave privada
secreta que pueden utilizar para descifrar esos mensajes o cifrar digitalmente
y firmar los mensajes que enviar.

Chat
--------

La mensajería instantánea existía como concepto desde los años 60. Durante la
década del 90, IRC se ha establecido como el protocolo dominante. En el 2000, se
propuso un nuevo estándar, abierto: Protocolo extensible de mensajería y
presencia (XMPP su sigla en ingles). Desde entonces, este protocolo ha ganado
cada vez más importancia convirtiéndose en una de las herramientas más valiosas
para la mensajería instantánea. Su importancia se basa en su extensibilidad junto
con su completa apertura. Al igual que el correo electrónico, XMPP puede
ejecutarse en servidores descentralizados. Esto hace que sea una opción
preferida para protocolo de mensajería instantánea. Otra gran característica
es su capacidad para soportar comunicaciones de vídeo y audio gracias a sus
extensiones.

:XMPP: eXtensible Messaging and Presence Protocol


    extensiones: XEP 0166 - Jingle - soporte para sesiones multimedia

Llamadas telefónicas
------------------------

El Protocolo de Iniciación de Sesión (SIP) es un protocolo de comunicaciones
para la señalización y el control de las sesiones de comunicación multimedia.
Las aplicaciones más comunes de la SIP están en la telefonía por Internet para
llamadas de voz y vídeo, así como la mensajería instantánea, sobre Protocolo de
Internet (IP).

El protocolo define los mensajes que se envían entre los puntos finales, que
rigen la creación, terminación y otros elementos esenciales de una llamada. SIP
se puede usar para crear, modificar y terminar sesiones, consta de uno o varios
flujos de medios. SIP es un protocolo de capa de aplicación diseñado para ser
independiente de la capa de transporte subyacente. Es un protocolo basado en
texto, que incorpora muchos elementos del Protocolo de transferencia de
hipertexto (HTTP) y el protocolo de transferencia de correo simple (SMTP).

SIP trabaja en conjunto con varios otros protocolos de capa de aplicación que
identifican y llevan los datos por la sesión. La identificación de los medios de
comunicación y la negociación se consigue con el Protocolo de Descripción de
Sesión (SDP). Para la transmisión de flujos de medios (voz, vídeo) SIP
normalmente emplea el Protocolo de transporte en tiempo real (RTP) o Protocolo
de transporte seguro en tiempo real (SRTP). Para las transmisiones seguras de
mensajes SIP, el protocolo se puede cifrar, por medio de una capa de transporte
seguro (Transport Layer Security; TLS).

Si bien XMPP, tiene soporte para realizar llamadas de voz y hasta de vídeo, aun esta
en un proceso de desarrollo, por tanto, requiere de correcciones y
trabajo de mantenimiento, en cambio SIP esta bien establecido y soporta la
adición de nuevas tecnologías, como codecs de audio y vídeo, por lo que podemos
presumir que tiene aun mucha vida por delante.

Vídeo telefonía
-------------------

La vídeo telefonía comprende las tecnologías para la recepción y transmisión de
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
comunicaciones de larga distancia (como el teléfono e Internet), reduce la
necesidad de viajar para unir a la gente.

Todo esto se puede realizar por medio del protocolo de iniciación de sesión
(SIP).

Gestión de contactos
------------------------

En el contexto de las redes, existe el capital social, en el que la gente tiene
una ventaja debido a su ubicación en una red. Contactos en una red proporcionan
información, oportunidades y perspectivas que pueden ser beneficiosos para el
participante en la red. La mayoría de las estructuras sociales tienden a
caracterizarse por densos racimos de conexiones fuertes. La información dentro
de estos grupos tiende a ser bastante homogénea y redundante. La información no
redundante, se obtiene, a menudo; a través de contactos en diferentes grupos.

Requerimientos
`````````````````

Software Libre
------------------

El primer requisito para la implementación del servicio es que cualquier
programa que se adopte, debe ser software libre. Las razones de este requisito
son a la vez técnicas, legales y éticas. Desde hace muchos años, dentro de la industria
del software, se ha establecido que el software libre ofrece
aplicaciones de una manera más rápida, con mejores resultados y menores costos.
La razón para ello es que los individuos y las empresas que desarrollan software
libre están constantemente capaces de confiar en los logros y el
apoyo de una comunidad mundial. Esto les da una ventaja extrema sobre proyectos
propios donde la calidad de un producto depende por completo de las personas que
estrictamente tienen acceso a ella. Los costos del softwre libre son también más bajos,
porque la mayoría de los productos no se aplican derechos de licencia, o vender
licencias que son más baratos que sus contra-partes propietarias.

La razón ética de este requisito se basa en el concepto de libertad. Una
definición de software libre podría ser: *El software libre es donde el usuario
controla el programa*. La forma en que un usuario puede controlar un programa es
por ser capaz de obtener acceso a su código fuente, pudiendo cambiarlo, pudiendo
redistribuirlo y usarlo para cualquier propósito.

Una consecuencia directa de la adopción del software libre es la transparencia.
La transparencia es de hecho uno de los elementos que hace un mejor
gobierno.

Estándares abiertos
-----------------------

Según   establece   el   Reglamento   para   el   Desarrollo   de   Tecnologías   de   Información   y
Comunicación, aprobado mediante el Decreto Supremo Nº 1793 el Estado debe utilizar
estándares abiertos para:

* Implementar y desarrollar software
* Procesos de interoperabilidad automatizados
* Intercambio de datos
* Intercambio de información

En este sentido, todo sistema o software adquirido o desarrollado por entidades estatales,
sea a través de procesos de contratación, adquisición, desarrollo interno o cualquier otro,
deberá contemplar los estándares a ser adoptados por el Estado Plurinacional de Bolivia
en el Catálogo de Estándares Abiertos, como también el estado del arte al interior del
CTIC-EPB.   El   objetivo   central   de   la   adopción   y/o   desarrollo   de   estándares   para   el
desarrollo, adquisición, etc., de software libre es dotar a las entidades del Estado las
herramientas necesarias para normar el proceso y para que el resultado sea óptimo para el
uso y desarrollo posterior en el marco de colectividades de usuarios y desarrolladores :cite:`agetic2016plansl` .


Servicios soberanos
-----------------------

Este requisito cumple con las directrices dictadas por la Agenda Patriótica
2025, que establece firmemente el concepto de Soberanía Tecnológica. Hoy en día
hemos sido testigos del surgimiento de servicios en la nube en todos sus
sabores: Software como Servicio (SaaS), Plataforma como Servicio (PaaS) e
Infraestructura como Servicio (IaaS). Estos patrones muestran una nueva manera de
hacer software que sin duda merecen atención. Pero también plantean un nuevo
problema: la mayoría de estos servicios en la nube se asignan en servidores fuera
de las fronteras del Estado y el mantenimiento y desarrollo de las comunidades y
las empresas que operaban en el extranjero. Este patrón termina limitando las
oportunidades para la industria nacional de software, y comunidades para
prosperar y crecer. Además, este patrón viola el concepto de soberanía
tecnológica, siempre que el usuario se suscribe a servicios extranjeros. La
solución a este problema es el despliegue de servicios en la nube desde dentro de
las fronteras del Estado. A raíz de este requisito la industria del software
será capaz de adoptar y desarrollar servicios en la nube, y las nuevas
tecnologías en general, totalmente, al tiempo que reduce drásticamente su
dependencia a la investigación y el desarrollo extranjero.

Integración
---------------

El requerimiento de integración se refiere a la capacidad de administrar
directorios de contactos de la manera más integrada posible. Un enfoque
particular que se pone en la realidad específica del sector público, que se
caracteriza por los siguientes aspectos:


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

Arquitectura propuesta
`````````````````````````

Introducción a la propuesta
---------------------------

Para poder manejar las diferentes entidades de manera descentralizada pero con
total interoperabilidad, se requiere tener una Arquitectura orientada a
servicios y contemplar los casos donde las entidades más pequeñas, preferirán
utilizar la infraestructura de las entidades más grandes. Para mantener sus
datos siempre disponibles. Esto es que un centro de datos central se manejaran
a las entidades mas pequeñas, que no cuentan con personal para mantener la
infraestructura.

Arquitectura orientada a servicios
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

Diagrama de servicios
-------------------------

:imagentex:`Generados/Arquitectura.tex`

Diagrama de Centro de Datos
---------------------------

Como se puede observar en el diagrama, se tiene un centro de datos principal, y
este contiene a las instituciones, pero se permite que las instituciones que
puedan mantener la infraestructura y el personal, tengan sus propios centro de
datos.

:imagentex:`Generados/diagramaCentroDeDatos.tex`


Implementación
`````````````````

Directorio Estatal
----------------------

Para tener un directorio estatal, se debe considerar que la información que se
manejara, cambia constantemente, y se debe contemplar personal para la
actualización continua de esta, fuera del personal técnico, para el
mantenimiento del servicio.

Para el manejo del directorio es recomendable adoptar una arquitectura lo mas
posible federada. De acuerdo a esta arquitectura, la información esta distribuida
sobre varios servidores administrados por las varias entidades publicas. A este
propósito se requiere que cada institución deba comprometerse a mantener
actualizado su proprio directorio, particularmente en los datos de contacto,
Correo Electrónico, celular y cargo. Esto no quita la opción de que las
instituciones que no desean tener los equipos dedicados para este fin, puedan
usar servicios de otra institución, pero sin delegar esta obligación de mantener
actualizado el directorio.

Para tener un nombre de usuario dentro un dominio general, como gob.bo, se
requiere implementar un sistema donde cada empleado gubernamental debe escoger
su nombre, y si este ya alguien lo eligió antes, debe escoger otro. De manera
similar a como ocurre con servicios de correo electrónico en Internet.

Cómo alternativas de herramientas para este servicio, podemos pensar en utilizar

:LDAP: Protocolo Ligero/Simplificado de Acceso a Directorios, de sus siglas en
       ingles Lightweight Directory Access Protocol; es un protocolo a nivel de
       aplicación que permite el acceso a un servicio de directorio ordenado y
       distribuido para buscar diversa información en un entorno de red. LDAP
       también se considera una base de datos (aunque su sistema de
       almacenamiento puede ser diferente) a la que pueden realizarse consultas.


:Base de Datos: También es posible utilizar una base de datos, tanto relacional
                como no relacional, para mantener la información del directorio,
                pero es necesario tener una capa de autenticación como
                servicio, para la federación del directorio.

Interoperabilidad
---------------------

Para poder federar el directorio, se necesita un servicio de identificación,
para este fin podemos utilizar OpenID, que es un estándar de identificación
digital descentralizado, con el que un usuario puede identificarse en una
página web a través de una URL (o un XRI en la versión actual) y puede ser
verificado por cualquier servidor que soporte el protocolo.

Servicios a implementar
-----------------------

Correo electrónico
~~~~~~~~~~~~~~~~~~~~~~~~

Para este servicio existen muchas alternativas, por ejemplo:

:Sendmail: es un popular "agente de transporte de correo" (MTA - Mail Transport
           Agent) en Internet, cuya tarea consiste en "encaminar" los mensajes
           o correos de forma que estos lleguen a su destino. Se afirma que es
           el más popular MTA, compatible con sistemas Unix y el responsable de
           la mayoría de envío del correo de Internet, aunque se le critica su
           alto número de alertas de seguridad (la mayoría de ellas parcheadas
           a las pocas horas), además de no ser sencillo de configurar.
:Postfix: es un servidor de correo, creado con la intención de que sea una
          alternativa más rápida, fácil de administrar y segura al ampliamente
          utilizado Sendmail. Anteriormente conocido como VMailer e IBM Secure
          Mailer, fue originalmente escrito por Wietse Venema durante su
          estancia en el Thomas J. Watson Research Center de IBM, y continúa
          siendo desarrollado activamente.
:Exim: (EXperimental Internet Mailer) es un agente de transporte de correo
       (Mail Transport Agent, usualmente MTA) desarrollado por la Universidad
       de Cambridge. En abril de 2016, un estudio realizado por E-Soft, Inc.,
       muestra que aproximadamente el 54% de los servidores públicos de correo
       electrónico, corren Exim.

Sendmail es una buena opción, pero con problemas de seguridad, probablemente 
porque mantiene código antiguo y una lógica también antigua. Postfix surge como una
alternativa importante, principalmente por que IBM esta por detrás, y su mayor
característica es que sus archivos de configuración son compatibles con Sendmail
, pero por el mismo motivo tiene limitantes como Sendmail. Por ultimo Exim, que
no quiere parecerse a Sendmail, tiene características que lo hacen muy
interesante

Chat
~~~~~~~~~~

Para la gestión del servicio de Chat se utiliza Ejabberd, lo cual es un servidor
de aplicaciones XMPP.
El servidor es distribuido bajo la licencia GPL y es cross-plataforma.
Ejabberd es de relativamente fácil de utilizar, gracias a su interfaz web de
administración.
Puede implementar autenticación con LDAP y login via SSL/TLS, SASL y STARTTLS.
Entre sus mejores características está la extensibilidad mediante de módulos.
Ejabberd también puede comunicarse con otros servidores XMPP lo cual permite la
implementación de redes descentralizadas.

El personal requerido para esta herramienta no debe necesariamente especializado
ya que se necesitan mínimos esfuerzos de instalación y mantenimiento.

Llamadas telefónicas
~~~~~~~~~~~~~~~~~~~~~~~~~~

Para la gestión del servicio de telefonía se pueden utilizar servidores como
Asterisk o Elastix los cuales son servidores para telefonía y telecomunicaciones
basadas sobre protocolo SIP.
Asterisk es distribuido bajo licencia GPL e implementa servicio de telefonía PBX
(Private Branch Exchange). Entres sus principales funcionalidades se puede
mencionar: buzón de voz, conferencias, IVR y distribución automática de llamadas.
Unas de las grandes ventajas  de Asterisk es su extensibilidad y la capacidad de
integrar diferentes tecnologías  cuales VoiP, SIP, H.323, IAX y MGCP
Elastix esta basado sobre Asterisk y es distribuido bajo licencia GPL e
implementa también servicios de chat, fax, email y trabajo colaborativo.

Vídeo telefonía
~~~~~~~~~~~~~~~~~~~~~

Para la implementación de servicios de vídeo llamadas no es necesario instalar
servidores adicionales , asumiendo la existencia en función de los servicios XMPP
o SIP. Ambos protocolos permiten la distribución de servicios de comunicación
audio/video. El factor determinante para la implementación de estos servicios es
la disponibilidad de aplicaciones cliente. Existen actualmente una gran variedad
de clientes para plataformas de escritorio ( Linux, Mac, Windows). Existen
aplicaciones clientes para dispositivos móviles basadas sobre SIP pero no
existen actualmente distribuciones estables que permitan la realización de
vídeo llamadas basadas sobre XMPP.

Gestión de contactos
~~~~~~~~~~~~~~~~~~~~~~~~~~

Para la gestión de contactos, utilizaremos Funanbol, que es un servidor de
aplicaciones móviles, que proporciona push email, libreta de direcciones
(agenda) y calendario (PIM), sincronización de datos, provisión de aplicaciones
y Device Management para dispositivos móviles y PC, utilizando protocolos
estándar como SyncML. Para los usuarios, esto implica funcionalidades semejantes
a las de BlackBerry en otros dispositivos de mano como teléfonos móviles.

Esta herramienta requiere un proceso de instalación extenso y poco
mantenimiento, por tanto el personal para este, no necesariamente debe ser
especializado

SyncML
'''''''

Es un protocolo de la familia de XML, usado para proveer sincronización remota
para dispositivos móviles. Está integrado en muchos dispositivos móviles, como
teléfonos móviles o PDAs.

SyncML es una herramienta multiplataforma que permite el intercambio y la
sincronización de datos a través de redes remotas, lo que quiere decir que ya no
tendrá que estar cerca de su ordenador para actualizar su agenda o su guía.

También sirve para hacer copias de seguridad de la agenda del móvil.



Aplicaciones clientes
-------------------------

Correo electrónico
~~~~~~~~~~~~~~~~~~~~~~~~

Actualmente existe una gran variedad de aplicaciones clientes para correo electrónico
desarrolladas para entorno desktop y también para móvil.
Para entorno desktop se recomienda Mozilla Thunderbird.
Para entorno móvil en general todos los dispositivos smartphone vienen con clientes
nativos pre-instalados.
El servicio de correo electrónico viene también con un cliente web, lo cual 
permite al usuario la consultación de correo desde cualquier navegador.

Chat
~~~~~~~~~~

Existe una gran variedad de clientes de mensajería instantánea para entorno desktop.
Entre los mas estables y recomendables se puede recomendar Pidgin.

Para entorno móvil las opciones son mas limitadas, debido sobre todo a la amigabilidad
de las interfaces y la estabilidad del software.

Una opción estable y relativamente amigable es Conversations. Otra opcion es Xabber Dev.

Con esto se reemplaza al chat de google, whatsapp, skype y muchos otros.

Llamadas telefónicas
~~~~~~~~~~~~~~~~~~~~~~~~~~

Para realizar llamadas SIP desde entorno desktop existen las aplicaciones Linphone y Ekiga.
También existe Jitsi para protocolo SIP y también XMPP.

Existe también la versión Linphone para móvil. Otra solución móvil es Lumicall.

Con esto se reemplaza al servicio de de llamadas de whatsapp, skype y otros.

Vídeo telefonía
~~~~~~~~~~~~~~~~~~~~

Para realizar vídeo llamadas SIP desde entorno desktop existen las aplicaciones Linphone y Ekiga
anteriormente mencionadas. De la misma forma Jitsi permite la realización de vídeo llamadas
sobre protocolo SIP y XMPP.

La versión móvil de Linphone también permite vídeo llamadas. 

Con esto se reemplaza al servicio de de vídeo llamadas de whatsapp, skype y otros.

Tiempos
-----------

La implementación del servicio de comunicación estatal esta planificada por fases.

La primera fase consiste en la activación de los servicios para los funcionarios
internos de AGETIC. Es una fase de test en la cual se pone particular enfoque
en las características de escalabilidad y usabilidad del servicio.

La segunda fase, se realizara entre algunas entidades, para comprobar la
estabilidad y escalabilidad de los servicios.

La tercera fase contempla la extensión del servicio al conjunto de funcionarios
públicos del estado. Esta fase requiere un nivel de estabilidad, seguridad y
usabilidad muy alto.

La cuarta fase, que es tentativa, incluye la posibilidad de abrir el servicio a
la población en general. El objetivo de esta fase es de mejorar la comunicación
entre funcionario publico y ciudadano.


======  ===================  ====================
 Fase    Duración en Meses    Personal Requerido
======  ===================  ====================
 1          3                    2
 2          6                    5
 3          3                   12
 4          6                   18
======  ===================  ====================

Conclusiones
----------------

Dada la popularidad de los dispositivos móviles inteligentes, y el soporte de
Internet de estos, hacen económicamente viable el uso de estas tecnologías,
reemplazando a los sistemas tradicionales(Telefonía Fija y Celular).

El mantenimiento de los centros de datos, son mas simples y menos costosos que
de las centrales tradicionales.

Por lo que en un futuro no muy lejano, estas centrales tendrán que migrar a
tecnologías como estas.


Bibliografía
````````````

* The state of mobile XMPP in 2016 -
  `https://gultsch.de/xmpp_2016.html <https://gultsch.de/xmpp_2016.html>`_
* Open Standards - Free Software Foundation Europe - https://fsfe.org/activities/os/def.en.html
* EUROPEAN INTEROPERABILITY FRAMEWORK FOR PAN-EUROPEAN eGOVERNMENT SERVICES - http://ec.europa.eu/idabc/servlets/Docd552.pdf?id=19529
* Promising XMPP Based Applications for Military and Defense Systems - IEEE 37th Annual Computer Software and Applications Conference  - 2013 
* Chatty Things - Making the Internet of Things Readily Usable for the Masses with XMPP - 8th International Conference Conference on Collaborative Computing: Networking, Applications and Worksharing - 2012
* XMPP - https://en.wikipedia.org/wiki/XMPP
* SIP - https://en.wikipedia.org/wiki/SIP
* Instant Messaging - https://en.wikipedia.org/wiki/Instant_messaging
* EXIM USE - http://www.securityspace.com/s_survey/data/man.201603/mxsurvey.html

|ImprimirBibliografía|
