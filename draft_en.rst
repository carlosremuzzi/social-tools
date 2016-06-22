A communication service for the public administration of Bolivia
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

1. Purpose of this document
```````````````````````````
The purpose of this document is to describe the IT architecture of a communication service designed for the public administration of Bolivia.
The architecture represents an improvement of the current model, and implements the concepts of interoperability, e-governance and technological sovereignty as described within the context of the Patriotic Agenda of Bolivia.

The document emphasizes the legal and technical aspects of the architecture, and presents a series of alternatives with regard to  the deployment strategies.
Any law, decree or legal content mentioned in this document are referred to the reality of Bolivia, unless specified otherwise.

The document is structured as follows.
Section 2 introduces the general context and analyses the legislative framework with regard to the Bolivian digital agenda.
Section 3 examines in detail the group of services included in the architecture.
Section 4 analyses the main requirements considered in the definition of the IT infrastructure.
Section 5 describes the architecture of the services.
Finally, section 6 discusses the deployment logistics and challenges.

2. Introduction
```````````````

Today’s technology is having an increasing impact on society. 
We are witnessing great advancements in telephony, networking, instant messaging and other communication channels. 
Electronic communication is transforming the way we work, the way we learn and the way we relate to each other. 
Furthermore, technology is changing the way governments deliver services to their citizens.
The quality and variety of such services depend, among other things, on the quality of its ICT infrastructure.

Because of this reason, more and more governments across the globe have been making moves toward the improvement and expansion of their web services and communication tools.

In this document, we focus on the public administration of Bolivia and the way its ICT infrastructure could be improved. 


Legislative framework
---------------------

This document finds its foundations in the decisions made within the context of the Telecommunications Act N° 164, ratified by the Supreme Decree N° 1793. The aforementioned  measures  establish a legal framework which describes the relation that needs to exist between the public administration, free software and open standards in Bolivia.
The same principles  are established within the State's Constitution, renewed on February 2009, and the Patriotic Agenda  2025. They both establish the principles of sovereignty and, for the purpose of this document, the principle of technological sovereignty.

Furthermore, the Patriotic Agenda provides a list of development goals in many categories. Those goals are set to be achieved by 2025.
Goal number 11 of the Agenda, in particular, establishes the fundamentals for the current document and many other ongoing governmental plans: *Sovereignty and transparency in public management governed by the principles of: don't steal, don't lie and don't be lazy.*

3. Services
```````````

In this section we describe the group of services which are included in the new communication service for the public administration of Bolivia. A particular focus is dedicated to the standards and protocols to be adopted by each service, the type and magnitude of the population served, the technology replaced and finally the human resources required. 

3.1 E-mail
----------

E-mail systems have been around since the 60's and they have now grown to become the standard and most trusted messaging tool over the internet. Thanks to cryptography and the rise of public key infrastructures (PKIs), email messages have now reached the status of legal documents in many countries, including Bolivia.
An important feature of the Email, is its decentralized architecture. Decentralization in this context means the following: when we sign up for an e-mail service with a certain provider, we are still able to exchange e-mail messages with users from different providers.
This level of decentralization was achieved thanks to the adoption of open standards. The standards adopted by email services are the following:

- SMTP : Simple Mail Transfer Protocol.
   Used by servers both to send and receive messages. Used by clients only to send messages. 
- IMAP : Internet Message Access Protocol.
   Used by servers and clients to retrieve email. 

The ability to provide decentralization through the adoption of open standards is considered a fundamental feature for any solution proposed in this document. 

3.2 Chat
--------

Instant messaging existed as a concept since the 60's. During the 90's IRC established itself as the dominating protocol.
In 2000, a new open standard was proposed: the Extensible Messaging and Presence Protocol (XMPP).
Ever since, this protocol gained more and more importance becoming one of the most valuable tools for instance messaging. Its importance relies on its extensibility together with its complete openness.
Just like email, XMPP can run on decentralized servers. This makes it a preferred choice as a protocol for instant messaging. Another great feature is it's ability to support video and audio communications thanks to its extensions. 

- XMPP : Extensible Messaging and Presence Protocol
    extensions: XEP 0166 - Jingle - support for multimedia sessions

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


- a highly hierarchical structure
- multiple institutions
- constant change of personnel
- multiple types of communication channels


One of the challenges encountered when dealing with contact management systems is that they usually give up on integrability in order to serve a specific reality, such as the public administration.  
 The main goal of this requirement is to inspire communication services where the user is required a minimal effort for managing contacts.  

5. Proposed architecture
````````````````````````
+------+-------------+-------------+-------------+----------+
| Chat | Phone Calls | Video Calls | Conferences | Contacts |
+------+-------------+-------------+-------------+----------+
| Directory                                                 |
+-----------------------------------------------------------+

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


