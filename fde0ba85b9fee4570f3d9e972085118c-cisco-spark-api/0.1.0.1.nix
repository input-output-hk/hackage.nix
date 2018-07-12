{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cisco-spark-api";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "Copyright: (c) 2017 Naoto Shimazaki";
        maintainer = "Naoto.Shimazaki@gmail.com";
        author = "Naoto Shimazaki";
        homepage = "https://github.com/nshimaza/cisco-spark-api#readme";
        url = "";
        synopsis = "A Haskell bindings for Cisco Spark API";
        description = "Cisco-spark-api package provides types and functions for accessing Cisco Spark REST API.\nThis package is designed to improve type safety over the API.  Each entity is separately typed.\nJSON messages contained in REST responses are decoded into appropriate type of Haskell record.\nJSON messages sent in REST requests are encoded only from correct type of record.\nSome Spark REST API returning list of objects require HTTP Link Header based pagination.\nHaskell functions abstract it.  They automatically request subsequent pages as needed and\nseamlessly stream returned elements rather than just return a chunk of elements in a response.\nThis package also provides some sample usage in command line application style.\nSee source under app directory of the source package.";
        buildType = "Simple";
      };
      components = {
        "cisco-spark-api" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.conduit-combinators
            hsPkgs.data-default
            hsPkgs.http-conduit
            hsPkgs.network-uri
            hsPkgs.text
            hsPkgs.bitset-word8
          ];
        };
        exes = {
          "cisco-spark-api-exe" = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.conduit-combinators
              hsPkgs.data-default
              hsPkgs.http-conduit
              hsPkgs.optparse-applicative
              hsPkgs.text
              hsPkgs.utf8-string
              hsPkgs.cisco-spark-api
            ];
          };
        };
        tests = {
          "cisco-spark-api-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.attoparsec
              hsPkgs.async
              hsPkgs.bytestring
              hsPkgs.conduit-combinators
              hsPkgs.data-default
              hsPkgs.http-conduit
              hsPkgs.http-types
              hsPkgs.network-uri
              hsPkgs.text
              hsPkgs.wai
              hsPkgs.warp
              hsPkgs.hspec
              hsPkgs.cisco-spark-api
            ];
          };
        };
      };
    }