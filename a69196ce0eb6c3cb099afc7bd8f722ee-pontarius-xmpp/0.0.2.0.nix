{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "pontarius-xmpp";
          version = "0.0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright © 2011, Jon Kristensen";
        maintainer = "jon.kristensen@pontarius.org";
        author = "Jon Kristensen, Mahdi Abdinejadi";
        homepage = "http://www.pontarius.org/projects/pontarius-xmpp/";
        url = "http://www.pontarius.org/releases/pontarius-xmpp-0.0.2.0.tar.gz";
        synopsis = "A (prototyped) easy to use XMPP library";
        description = "A work in progress of an implementation of RFC 3920: XMPP\nCore.";
        buildType = "Simple";
      };
      components = {
        pontarius-xmpp = {
          depends  = [
            hsPkgs.hlogger
            hsPkgs.base
            hsPkgs.enumerator
            hsPkgs.crypto-api
            hsPkgs.base64-string
            hsPkgs.regex-posix
            hsPkgs.pureMD5
            hsPkgs.utf8-string
            hsPkgs.network
            hsPkgs.xml-types
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.bytestring
            hsPkgs.binary
            hsPkgs.random
            hsPkgs.xml-enumerator
            hsPkgs.tls
            hsPkgs.containers
          ];
        };
        exes = {
          pontarius-xmpp-test = {
            depends  = [
              hsPkgs.hlogger
              hsPkgs.base
              hsPkgs.enumerator
              hsPkgs.crypto-api
              hsPkgs.base64-string
              hsPkgs.regex-posix
              hsPkgs.pureMD5
              hsPkgs.utf8-string
              hsPkgs.network
              hsPkgs.xml-types
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.bytestring
              hsPkgs.binary
              hsPkgs.random
              hsPkgs.xml-enumerator
              hsPkgs.tls
              hsPkgs.containers
            ];
          };
        };
      };
    }