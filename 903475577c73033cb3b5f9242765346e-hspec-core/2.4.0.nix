{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hspec-core";
          version = "2.4.0";
        };
        license = "MIT";
        copyright = "(c) 2011-2017 Simon Hengel,\n(c) 2011-2012 Trystan Spangler,\n(c) 2011 Greg Weber";
        maintainer = "Simon Hengel <sol@typeful.net>";
        author = "";
        homepage = "http://hspec.github.io/";
        url = "";
        synopsis = "A Testing Framework for Haskell";
        description = "This package exposes internal types and functions that can be used to extend Hspec's functionality.";
        buildType = "Simple";
      };
      components = {
        hspec-core = {
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
            hsPkgs.call-stack
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.array
          ];
        };
        tests = {
          spec = {
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
              hsPkgs.call-stack
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.array
              hsPkgs.hspec-meta
              hsPkgs.silently
              hsPkgs.process
              hsPkgs.temporary
            ];
          };
        };
      };
    }