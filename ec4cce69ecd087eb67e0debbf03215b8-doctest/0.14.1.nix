{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "doctest";
          version = "0.14.1";
        };
        license = "MIT";
        copyright = "(c) 2009-2018 Simon Hengel";
        maintainer = "Simon Hengel <sol@typeful.net>";
        author = "Simon Hengel <sol@typeful.net>";
        homepage = "https://github.com/sol/doctest#readme";
        url = "";
        synopsis = "Test interactive Haskell examples";
        description = "The doctest program checks examples in source code comments.  It is modeled\nafter doctest for Python (<http://docs.python.org/library/doctest.html>).\n\nDocumentation is at <https://github.com/sol/doctest#readme>.";
        buildType = "Simple";
      };
      components = {
        "doctest" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.code-page
            hsPkgs.deepseq
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.ghc
            hsPkgs.ghc-paths
            hsPkgs.process
            hsPkgs.syb
            hsPkgs.transformers
          ];
        };
        exes = {
          "doctest" = {
            depends  = [
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.code-page
              hsPkgs.deepseq
              hsPkgs.directory
              hsPkgs.doctest
              hsPkgs.filepath
              hsPkgs.ghc
              hsPkgs.ghc-paths
              hsPkgs.process
              hsPkgs.syb
              hsPkgs.transformers
            ];
          };
        };
        tests = {
          "doctests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.code-page
              hsPkgs.deepseq
              hsPkgs.directory
              hsPkgs.doctest
              hsPkgs.filepath
              hsPkgs.ghc
              hsPkgs.ghc-paths
              hsPkgs.process
              hsPkgs.syb
              hsPkgs.transformers
            ];
          };
          "spec" = {
            depends  = [
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.code-page
              hsPkgs.deepseq
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.ghc
              hsPkgs.ghc-paths
              hsPkgs.hspec
              hsPkgs.mockery
              hsPkgs.process
              hsPkgs.setenv
              hsPkgs.silently
              hsPkgs.stringbuilder
              hsPkgs.syb
              hsPkgs.transformers
              hsPkgs.with-location
            ];
          };
        };
      };
    }