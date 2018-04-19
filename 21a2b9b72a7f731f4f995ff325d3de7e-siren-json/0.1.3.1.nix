{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "siren-json";
          version = "0.1.3.1";
        };
        license = "MIT";
        copyright = "(c) 2017 Alex Brandt";
        maintainer = "alunduil@alunduil.com";
        author = "Alex Brandt";
        homepage = "https://github.com/alunduil/siren-json.hs";
        url = "";
        synopsis = "Siren Tools for Haskell";
        description = "Types, classes, and functions for using the Siren—Hypermedia Type in Haskell.";
        buildType = "Simple";
      };
      components = {
        siren-json = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.http-media
            hsPkgs.http-types
            hsPkgs.network-uri
            hsPkgs.network-uri-json
            hsPkgs.text
            hsPkgs.unordered-containers
          ];
        };
        tests = {
          siren-json-tests = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.case-insensitive
              hsPkgs.containers
              hsPkgs.hspec
              hsPkgs.http-media
              hsPkgs.http-types
              hsPkgs.network-arbitrary
              hsPkgs.network-uri
              hsPkgs.network-uri-json
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
              hsPkgs.test-invariant
              hsPkgs.text
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }