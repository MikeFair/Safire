Safire
======

"Safire" - An amalgamation of several ambitious projects and goals.
Safire is about many things:
* a dynamic language and a simple execution engine (supports many sates like "run time", "design time", "debug time", "test time")
* combining features from a few different object oriented and message based programming languages (Inform7, xTalk, SmallTalk, Perl6)
* a distributed peer based runtime designed for use on the internet by federated domains 
* engines are multitenant capable, and each tenant supports multiple "environment instances/regions" (like test, prod, site1, site2)
* a distributed engine for "Things" creating an "internet of things" repository where a domain publishes things from an environment
* "Binding" objects on different servers via "relationships" - hiding the network synchronization (think photon entanglement)
* a natural language based abstraction model for supporting many natural languages and decompiling into different native languages
* a distributed set of online "Rulebooks" creating workflows that can be loaded into your environment and then modified
* a distributed set of object interfaces for interfacing with/binding to objects in other domains (akin to an SNMP MIB)
* a distributed set of 'protocols' enforcing a specific dialogue ordering (like ZeroMQ REQ/REP, but allowing complexity)
* suport a story and state based workflow engine (like an Inform 7 'Interactive Fiction'.")
* Federated, Authenticated, Authorized - initially utilizing the XMPP to enable domains to authenticate, authorize, communicate.

Think ZeroMQ, meets XMPP, meets Amazon.com, meets Google and WikiPedia, using langauges like Inform 7, SmallTalk, LiveCode/HyperTalk 
to describe, load, and script the objects, events, relationships, and protocols that interact in a real-world-like environment.

Language 'Safire' was began with ../tools/dev/mk_language_shell.pl, r$Revision$.

    $ vi build.sh (set PREFIX to wherever your parrot install is)
    $ ./build.sh

