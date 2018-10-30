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
        name = "hspec-meta";
        version = "2.3.2";
      };
      license = "MIT";
      copyright = "(c) 2011-2015 Simon Hengel,\n(c) 2011-2012 Trystan Spangler,\n(c) 2011 Greg Weber";
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
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.QuickCheck)
          (hsPkgs.hspec-expectations)
          (hsPkgs.HUnit)
          (hsPkgs.setenv)
          (hsPkgs.deepseq)
          (hsPkgs.random)
          (hsPkgs.quickcheck-io)
          (hsPkgs.ansi-terminal)
          (hsPkgs.time)
          (hsPkgs.async)
          (hsPkgs.call-stack)
        ];
      };
      exes = {
        "hspec-meta-discover" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec-expectations)
            (hsPkgs.HUnit)
            (hsPkgs.setenv)
            (hsPkgs.deepseq)
            (hsPkgs.random)
            (hsPkgs.quickcheck-io)
            (hsPkgs.ansi-terminal)
            (hsPkgs.time)
            (hsPkgs.async)
            (hsPkgs.call-stack)
            (hsPkgs.filepath)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }