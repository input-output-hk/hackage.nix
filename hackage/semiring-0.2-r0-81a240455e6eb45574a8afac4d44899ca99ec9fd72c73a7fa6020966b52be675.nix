{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { testing = false; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "semiring";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<srush at mit dot edu>";
      author = "Sasha Rush";
      homepage = "http://github.com/srush/SemiRings/tree/master";
      url = "";
      synopsis = "Semirings, ring-like structures used for dynamic programming applications";
      description = "This provides a type class for semirings and\nimplementations of the common semirings used in natural language\nprocessing.";
      buildType = "Simple";
    };
    components = {
      "semiring" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.monoids)
          (hsPkgs.Boolean)
        ];
      };
      exes = {
        "hstestsemi" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.monoids)
            (hsPkgs.Boolean)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
    };
  }