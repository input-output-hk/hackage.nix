{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "stomp-queue";
          version = "0.0.1";
        };
        license = "LicenseRef-LGPL";
        copyright = "Copyright (c) Tobias Schoofs, 2011";
        maintainer = "tobias.schoofs@gmx.net";
        author = "Tobias Schoofs";
        homepage = "http://github.com/toschoo/stompl";
        url = "";
        synopsis = "Stompl Client Library";
        description = "The Stomp Protocol specifies message-oriented interoperability.\nApplications connect to a message broker to send (publish)\nor receive (subscribe) messages through queues.\nInteroperating applications do not know\nthe location or internal structure of each other.\nThey see only each other's interfaces, /i.e./ the messages\npublished and subscribed through the broker.\nThe Stomp Queue library provides\na Stomp client, using abstractions like\n'Connection', 'Transaction', 'Queue' and 'Message'.\nMore information, examples and a test suite are available\non <http://github.com/toschoo/stompl>.\nThe Stomp specification can be found at\n<http://stomp.github.com>.";
        buildType = "Simple";
      };
      components = {
        stomp-queue = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.utf8-string
            hsPkgs.attoparsec
            hsPkgs.split
            hsPkgs.network
            hsPkgs.stompl
            hsPkgs.mime
            hsPkgs.time
          ];
        };
      };
    }