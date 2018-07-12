{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "collection-json";
          version = "1.0.0.0";
        };
        license = "MIT";
        copyright = "(c) 2017 Alex Brandt";
        maintainer = "alunduil@alunduil.com";
        author = "Alex Brandt";
        homepage = "https://github.com/alunduil/collection-json.hs";
        url = "";
        synopsis = "Collection+JSON—Hypermedia Type Tools";
        description = "Types, classes, and functions for using the Collection+JSON—Hypermedia Type\nin Haskell.";
        buildType = "Simple";
      };
      components = {
        "collection-json" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.network-uri
            hsPkgs.text
          ];
        };
        tests = {
          "Properties" = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.network-uri
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
              hsPkgs.test-invariant
              hsPkgs.text
            ];
          };
        };
      };
    }