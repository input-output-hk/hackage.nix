{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hspec-smallcheck";
        version = "0.5.0";
      };
      license = "MIT";
      copyright = "(c) 2013-2018 Simon Hengel";
      maintainer = "Simon Hengel <sol@typeful.net>";
      author = "";
      homepage = "http://hspec.github.io/";
      url = "";
      synopsis = "SmallCheck support for the Hspec testing framework";
      description = "SmallCheck support for the Hspec testing framework";
      buildType = "Simple";
    };
    components = {
      "hspec-smallcheck" = {
        depends  = [
          (hsPkgs.HUnit)
          (hsPkgs.base)
          (hsPkgs.call-stack)
          (hsPkgs.hspec-core)
          (hsPkgs.smallcheck)
        ];
      };
      tests = {
        "example" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.base)
            (hsPkgs.call-stack)
            (hsPkgs.hspec)
            (hsPkgs.hspec-core)
            (hsPkgs.hspec-smallcheck)
            (hsPkgs.smallcheck)
          ];
        };
        "spec" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.call-stack)
            (hsPkgs.hspec)
            (hsPkgs.hspec-core)
            (hsPkgs.smallcheck)
          ];
        };
      };
    };
  }