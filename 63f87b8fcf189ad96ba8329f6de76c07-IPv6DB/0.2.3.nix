{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "IPv6DB";
          version = "0.2.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2017 - Michel Boucey";
        maintainer = "michel.boucey@cybervisible.fr";
        author = "Michel Boucey";
        homepage = "http://ipv6db.cybervisible.com";
        url = "";
        synopsis = "A RESTful Web Service for IPv6-related data";
        description = "IPv6DB is a RESTful microservice using Redis as backend\nto store lists of IPv6 addresses and attach to each of\nthem any valuable data in a schema-free valid JSON value.\nEach resource can be permanent or TTLed.";
        buildType = "Simple";
      };
      components = {
        "IPv6DB" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.IPv6Addr
            hsPkgs.hedis
            hsPkgs.http-types
            hsPkgs.unordered-containers
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.vector
          ];
        };
        exes = {
          "ipv6db" = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.fast-logger
              hsPkgs.IPv6Addr
              hsPkgs.IPv6DB
              hsPkgs.hedis
              hsPkgs.http-types
              hsPkgs.unordered-containers
              hsPkgs.mtl
              hsPkgs.optparse-applicative
              hsPkgs.text
              hsPkgs.vector
              hsPkgs.wai
              hsPkgs.wai-logger
              hsPkgs.warp
            ];
          };
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.hspec
              hsPkgs.base
              hsPkgs.IPv6DB
              hsPkgs.vector
              hsPkgs.http-client
              hsPkgs.http-types
            ];
          };
        };
      };
    }