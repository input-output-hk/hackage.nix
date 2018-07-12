{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "Stomp";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "virukav@gmail.com";
        author = "Vitaliy Rukavishnikov";
        homepage = "http://github.com/rukav/Stomp";
        url = "";
        synopsis = "Client library for Stomp brokers.";
        description = "Stomp is a client library for communicating with message servers through the\nSTOMP protocol (http://stomp.github.com/stomp-specification-1.1.html)";
        buildType = "Simple";
      };
      components = {
        "Stomp" = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
            hsPkgs.binary
            hsPkgs.time
            hsPkgs.bytestring
            hsPkgs.utf8-string
          ];
        };
      };
    }