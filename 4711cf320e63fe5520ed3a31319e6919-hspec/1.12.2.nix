{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hspec";
          version = "1.12.2";
        };
        license = "MIT";
        copyright = "(c) 2011-2014 Simon Hengel,\n(c) 2011-2012 Trystan Spangler,\n(c) 2011 Greg Weber";
        maintainer = "Simon Hengel <sol@typeful.net>";
        author = "";
        homepage = "http://hspec.github.io/";
        url = "";
        synopsis = "A Testing Framework for Haskell";
        description = "Hspec is a testing framework for Haskell. It is inspired by\nthe Ruby library RSpec. Some of Hspec's distinctive features\nare:\n\n* a friendly DSL for defining tests\n\n* integration with QuickCheck, SmallCheck, and HUnit\n\n* parallel test execution\n\n* automatic discovery of test files\n\nThe Hspec Manual is at <http://hspec.github.io/>.";
        buildType = "Simple";
      };
      components = {
        hspec = {
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
          hspec-discover = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.directory
            ];
          };
        };
        tests = {
          spec = {
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
              hsPkgs.directory
              hsPkgs.stringbuilder
              hsPkgs.ghc-paths
            ];
          };
          example = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.QuickCheck
            ];
          };
          hspec-discover-spec = {
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