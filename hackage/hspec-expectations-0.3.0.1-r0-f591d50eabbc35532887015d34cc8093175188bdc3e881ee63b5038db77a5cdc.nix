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
        name = "hspec-expectations";
        version = "0.3.0.1";
      };
      license = "MIT";
      copyright = "(c) 2011, 2012 Simon Hengel";
      maintainer = "Simon Hengel <sol@typeful.net>";
      author = "Simon Hengel <sol@typeful.net>";
      homepage = "https://github.com/sol/hspec-expectations#readme";
      url = "";
      synopsis = "Catchy combinators for HUnit";
      description = "Catchy combinators for HUnit: <https://github.com/sol/hspec-expectations#readme>";
      buildType = "Simple";
    };
    components = {
      "hspec-expectations" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.HUnit)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec-expectations)
            (hsPkgs.HUnit)
            (hsPkgs.silently)
            (hsPkgs.hspec)
            (hsPkgs.hspec-discover)
          ];
        };
        "readme-attoparsec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec-expectations)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }