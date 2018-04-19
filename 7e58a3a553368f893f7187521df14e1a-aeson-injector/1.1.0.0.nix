{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "aeson-injector";
          version = "1.1.0.0";
        };
        license = "MIT";
        copyright = "2016-2017 Anton Gushcha";
        maintainer = "ncrashed@gmail.com";
        author = "Anton Gushcha";
        homepage = "";
        url = "";
        synopsis = "Injecting fields into aeson values";
        description = "See README.md";
        buildType = "Simple";
      };
      components = {
        aeson-injector = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bifunctors
            hsPkgs.deepseq
            hsPkgs.hashable
            hsPkgs.lens
            hsPkgs.servant-docs
            hsPkgs.swagger2
            hsPkgs.text
            hsPkgs.unordered-containers
          ];
        };
        tests = {
          test-aeson-injector = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.aeson-injector
              hsPkgs.containers
              hsPkgs.HUnit
              hsPkgs.lens
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-text
              hsPkgs.scientific
              hsPkgs.swagger2
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.text
              hsPkgs.vector
            ];
          };
        };
      };
    }