{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hspec";
          version = "2.1.3";
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
        "hspec" = {
          depends  = [
            hsPkgs.base
            hsPkgs.hspec-core
            hsPkgs.hspec-discover
            hsPkgs.hspec-expectations
            hsPkgs.transformers
            hsPkgs.QuickCheck
            hsPkgs.HUnit
          ];
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec-core
              hsPkgs.hspec
              hsPkgs.directory
              hsPkgs.stringbuilder
              hsPkgs.hspec-meta
            ];
          };
        };
      };
    }