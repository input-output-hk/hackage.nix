{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "HUnit";
        version = "1.3.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Simon Hengel <sol@typeful.net>";
      author = "Dean Herington";
      homepage = "http://hunit.sourceforge.net/";
      url = "";
      synopsis = "A unit testing framework for Haskell";
      description = "HUnit is a unit testing framework for Haskell, inspired by the\nJUnit tool for Java, see: <http://www.junit.org>.";
      buildType = "Simple";
    };
    components = {
      "HUnit" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.filepath)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }