{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hspec";
        version = "2.5.2";
      };
      license = "MIT";
      copyright = "(c) 2011-2018 Simon Hengel,\n(c) 2011-2012 Trystan Spangler,\n(c) 2011 Greg Weber";
      maintainer = "Simon Hengel <sol@typeful.net>";
      author = "";
      homepage = "http://hspec.github.io/";
      url = "";
      synopsis = "A Testing Framework for Haskell";
      description = "Hspec is a testing framework for Haskell. It is inspired by\nthe Ruby library RSpec. Some of Hspec's distinctive features\nare:\n\n* a friendly DSL for defining tests\n\n* integration with QuickCheck, SmallCheck, and HUnit\n\n* parallel test execution\n\n* automatic discovery of test files\n\nThe Hspec Manual is at <http://hspec.github.io/>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.HUnit)
          (hsPkgs.QuickCheck)
          (hsPkgs.base)
          (hsPkgs.call-stack)
          (hsPkgs.hspec-core)
          (hsPkgs.hspec-discover)
          (hsPkgs.hspec-expectations)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.call-stack)
            (hsPkgs.directory)
            (hsPkgs.hspec)
            (hsPkgs.hspec-core)
            (hsPkgs.hspec-discover)
            (hsPkgs.hspec-expectations)
            (hsPkgs.hspec-meta)
            (hsPkgs.stringbuilder)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }