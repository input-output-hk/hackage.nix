{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "data-stringmap";
          version = "0.9.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "uwe@fh-wedel.de, sebastian@spawnhost.de";
        author = "Uwe Schmidt, Sebastian Philipp";
        homepage = "";
        url = "";
        synopsis = "An efficient implementation of maps from strings to arbitrary values";
        description = "An efficient implementation of maps from strings to arbitrary values.\nValues can associated with an arbitrary byte key.\nSearching for keys is very fast, but\nthe prefix tree probably consumes more memory than\n\"Data.Map\". The main differences are the special\n'prefixFind' functions, which can be used to perform prefix queries.";
        buildType = "Simple";
      };
      components = {
        data-stringmap = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.binary
            hsPkgs.containers
          ];
        };
        tests = {
          properties = {
            depends  = [
              hsPkgs.data-stringmap
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
              hsPkgs.ghc-heap-view
              hsPkgs.deepseq
            ];
          };
          strict = {
            depends  = [
              hsPkgs.data-stringmap
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
              hsPkgs.ghc-heap-view
              hsPkgs.deepseq
            ];
          };
        };
      };
    }