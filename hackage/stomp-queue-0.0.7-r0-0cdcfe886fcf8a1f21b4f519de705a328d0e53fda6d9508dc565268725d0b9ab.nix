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
        version = "0.0.7";
      };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) Tobias Schoofs, 2011 - 2013";
      maintainer = "tobias dot schoofs at gmx dot net";
      author = "Tobias Schoofs";
      homepage = "http://github.com/toschoo/mom";
      url = "";
      synopsis = "Stompl Client Library";
      description = "The Stomp Protocol specifies message-oriented interoperability.\nApplications connect to a message broker to send (publish)\nor receive (subscribe) messages through queues.\nInteroperating applications do not know\nthe location or internal structure of each other.\nThey see only each other's interfaces, /i.e./ the messages\npublished and subscribed through the broker.\nThe Stomp Queue library provides\na Stomp client, using abstractions like\n'Connection', 'Transaction', 'Queue' and 'Message'.\nMore information, examples and a test suite are available\non <http://github.com/toschoo/mom>.\nThe Stomp specification can be found at\n<http://stomp.github.com>.\n\nRelease History:\n\n[0.0.7] Fighting with hackagedb...\n\n[0.0.6] Heartbeats caused a memory leak by creating\nmany Connection instances in the connection state list.\nThe connections were lazily deleted, /i.e./ were\nnot deleted at all.\nConnection state is now cleaned up by a strict delete.\n\n[0.0.5] Underscore functions removed;\nwith* functions: withWriter, withPair;\nnew option for connection (ClientId);\nHeaders for broker-specific options can be passed to connection.\n\n[0.0.3] New interface writeAdHoc\n\n[0.0.2] Minor corrections\n\n[0.0.1] Initial release";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
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