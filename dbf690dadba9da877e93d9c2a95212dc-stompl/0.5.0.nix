{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "stompl";
          version = "0.5.0";
        };
        license = "LicenseRef-LGPL";
        copyright = "Copyright (c) Tobias Schoofs, 2011 - 2016";
        maintainer = "tobias dot schoofs at gmx dot net";
        author = "Tobias Schoofs";
        homepage = "http://github.com/toschoo/mom";
        url = "";
        synopsis = "Stomp Parser and Utilities";
        description = "The Stomp Protocol specifies message-oriented interoperability.\nApplications connect to a message broker to send (publish)\nor receive (subscribe) messages through queues.\nInteroperating applications do not know\nthe location or internal structure of each other.\nThey see only each other's interfaces, /i.e./ the messages\npublished and subscribed through the broker.\nBroker and application use a protocol based on the\nexchange of commands and other data packets, called /frames/.\nThe Stompl library provides abstractions over Stomp frames\nand a Stomp frame parser.\nIt does not implement a client or broker itself,\nbut provides abstractions to libraries and programs doing so.\nIt is used by the Stompl Queue library (stomp-queues).\nMore documentation and a test suite can be found on\n<https://github.com/toschoo/mom/>.\nThe Stomp specification can be found at\n<http://stomp.github.com>.";
        buildType = "Simple";
      };
      components = {
        "stompl" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.utf8-string
            hsPkgs.word8
            hsPkgs.attoparsec
            hsPkgs.split
            hsPkgs.mime
            hsPkgs.text
          ];
        };
      };
    }