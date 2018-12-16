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
        name = "hspec-core";
        version = "2.4.5";
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
      "library" = {
        depends = [
          (hsPkgs.HUnit)
          (hsPkgs.QuickCheck)
          (hsPkgs.ansi-terminal)
          (hsPkgs.array)
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.call-stack)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.hspec-expectations)
          (hsPkgs.quickcheck-io)
          (hsPkgs.random)
          (hsPkgs.setenv)
          (hsPkgs.tf-random)
          (hsPkgs.time)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.ansi-terminal)
            (hsPkgs.array)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.call-stack)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hspec-expectations)
            (hsPkgs.hspec-meta)
            (hsPkgs.process)
            (hsPkgs.quickcheck-io)
            (hsPkgs.random)
            (hsPkgs.setenv)
            (hsPkgs.silently)
            (hsPkgs.temporary)
            (hsPkgs.tf-random)
            (hsPkgs.time)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }