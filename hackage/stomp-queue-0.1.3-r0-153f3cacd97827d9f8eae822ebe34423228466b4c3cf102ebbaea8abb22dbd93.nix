{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "stomp-queue";
        version = "0.1.3";
      };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) Tobias Schoofs, 2011 - 2014";
      maintainer = "tobias dot schoofs at gmx dot net";
      author = "Tobias Schoofs";
      homepage = "http://github.com/toschoo/mom";
      url = "";
      synopsis = "Stompl Client Library";
      description = "The Stomp Protocol specifies message-oriented interoperability.\nApplications connect to a message broker to send (publish)\nor receive (subscribe) messages through queues.\nInteroperating applications do not know\nthe location or internal structure of each other.\nThey see only each other's interfaces, /i.e./ the messages\npublished and subscribed through the broker.\n\nThe Stomp Queue library provides\na Stomp client, using abstractions like\n'Connection', 'Transaction', 'Queue' and 'Message'.\nThis basic abstractions are implemented in the module /Queue/.\nThe /Patterns/ module adds an abstraction layer\non top of queues, in particular an implementation\nof the /client-server/ pattern.\n\nMore information, examples and a test suite are available\non <http://github.com/toschoo/mom>.\nThe Stomp specification can be found at\n<http://stomp.github.com>.\n\nRelease History:\n\n[0.1.3] New Option for newWriter 'ONoContentLen'\n\n[0.1.2] Minor changes:\n\n- Dependency for stompl-0.1.1\n\n- Some more enquiries into potential mem leaks,\nbut more to follow\n\n[0.1.1] Dependency for bytestring 0.10\n\n[0.1.0] Major changes:\n\n- Compliance with Stomp 1.2:\n\n- There are major changes in the frame format,\nplease refer to the documentation of the\nstompl package, version 0.1.0, there are important changes\nthat may impact messages for older versions!\n\n- When generating an Ack frame,\nthe /id/ header is by default taken from the /ack/ header\nin the corresponding Message frame.\nShould there be no /ack/ header or if its value is empty,\nthe value of the header /message-id/ is taken.\nThis behaviour complies with 1.2\nfor brokers supporting this version,\nbut also continues to work with 1.1 brokers.\n\n- It is now possible to send a Stomp frame\nto connect to a broker (the broker, of course,\nhas to accept Stomp frames and process them correctly).\nThere is a new Copt (/OStomp/) to support this feature.\n\n[0.0.8] Client/Server on top of Queues.\n\n[0.0.7] Fighting with hackagedb...\n\n[0.0.6] Heartbeats caused a memory leak by creating\nmany Connection instances in the connection state list.\nThe connections were lazily deleted, /i.e./ were\nnot deleted at all.\nConnection state is now cleaned up by a strict delete.\n\n[0.0.5] Major changes:\n\n- Underscore functions (/withConnection_/) removed;\n\n- New /with*/ functions: /withWriter/, /withPair/;\n\n- New option for connection (ClientId);\n\n- Headers for broker-specific options can be passed to connection\n(this changes the /withConnection/ type signature!)\n\n[0.0.3] New interface writeAdHoc\n\n[0.0.2] Minor corrections\n\n[0.0.1] Initial release";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.utf8-string)
          (hsPkgs.attoparsec)
          (hsPkgs.split)
          (hsPkgs.network)
          (hsPkgs.stompl)
          (hsPkgs.mime)
          (hsPkgs.time)
        ];
      };
    };
  }