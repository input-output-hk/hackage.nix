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
      specVersion = "1.12";
      identifier = {
        name = "hspec-meta";
        version = "2.5.6";
      };
      license = "MIT";
      copyright = "(c) 2011-2018 Simon Hengel,\n(c) 2011-2012 Trystan Spangler,\n(c) 2011 Greg Weber";
      maintainer = "Simon Hengel <sol@typeful.net>";
      author = "";
      homepage = "http://hspec.github.io/";
      url = "";
      synopsis = "A version of Hspec which is used to test Hspec itself";
      description = "A stable version of Hspec which is used to test the\nin-development version of Hspec.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.HUnit)
          (hsPkgs.QuickCheck)
          (hsPkgs.ansi-terminal)
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.call-stack)
          (hsPkgs.clock)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.hspec-expectations)
          (hsPkgs.quickcheck-io)
          (hsPkgs.random)
          (hsPkgs.setenv)
          (hsPkgs.stm)
          (hsPkgs.time)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "hspec-meta-discover" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.ansi-terminal)
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.call-stack)
            (hsPkgs.clock)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hspec-expectations)
            (hsPkgs.quickcheck-io)
            (hsPkgs.random)
            (hsPkgs.setenv)
            (hsPkgs.stm)
            (hsPkgs.time)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }