{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hspec-contrib";
        version = "0.3.0";
      };
      license = "MIT";
      copyright = "(c) 2011-2015 Simon Hengel,\n(c) 2014 Junji Hashimoto";
      maintainer = "Simon Hengel <sol@typeful.net>";
      author = "";
      homepage = "http://hspec.github.io/";
      url = "";
      synopsis = "Contributed functionality for Hspec";
      description = "Contributed functionality for Hspec";
      buildType = "Simple";
    };
    components = {
      "hspec-contrib" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hspec-core)
          (hsPkgs.HUnit)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec-core)
            (hsPkgs.HUnit)
            (hsPkgs.hspec-contrib)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }