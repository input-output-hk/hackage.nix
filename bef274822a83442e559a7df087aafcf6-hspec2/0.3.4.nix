{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hspec2";
          version = "0.3.4";
        };
        license = "MIT";
        copyright = "(c) 2011-2014 Simon Hengel,\n(c) 2011-2012 Trystan Spangler,\n(c) 2011 Greg Weber";
        maintainer = "Simon Hengel <sol@typeful.net>";
        author = "";
        homepage = "http://hspec.github.io/";
        url = "";
        synopsis = "Alpha version of Hspec 2.0";
        description = "This is an alpha release of Hspec 2.0.\nIf you are looking for a stable solution for testing Haskell\ncode, use the 1.x series of Hspec: <http://hspec.github.io/>";
        buildType = "Simple";
      };
      components = {
        "hspec2" = {
          depends  = [
            hsPkgs.base
            hsPkgs.random
            hsPkgs.tf-random
            hsPkgs.setenv
            hsPkgs.ansi-terminal
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.deepseq
            hsPkgs.HUnit
            hsPkgs.QuickCheck
            hsPkgs.quickcheck-io
            hsPkgs.hspec-expectations
            hsPkgs.async
          ];
        };
        exes = {
          "hspec-discover" = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.directory
            ];
          };
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.random
              hsPkgs.tf-random
              hsPkgs.setenv
              hsPkgs.silently
              hsPkgs.ansi-terminal
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.deepseq
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-io
              hsPkgs.hspec-expectations
              hsPkgs.async
              hsPkgs.hspec-meta
              hsPkgs.process
              hsPkgs.ghc-paths
            ];
          };
          "doctests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
          "example" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec2
              hsPkgs.QuickCheck
            ];
          };
          "hspec-discover-spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.hspec-meta
            ];
          };
        };
      };
    }