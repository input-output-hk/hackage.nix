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
        name = "gps";
        version = "0.8.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Thomas DuBuisson";
      author = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "For manipulating GPS coordinates and trails.";
      description = "Useful for manipulating GPS coordinages (in various forms), building paths, and performing basic computations.  NOTE: Version range 0.8.* won't strictly follow PVP - I will be adding additional functions in minor releases 0.8.x.";
      buildType = "Simple";
    };
    components = {
      "gps" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.pretty)
          (hsPkgs.prettyclass)
          (hsPkgs.time)
          (hsPkgs.GPX)
          (hsPkgs.hxt)
          (hsPkgs.xsd)
          (hsPkgs.vector)
          (hsPkgs.statistics)
        ];
      };
      tests = {
        "gps-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.time)
            (hsPkgs.GPX)
            (hsPkgs.hxt)
            (hsPkgs.xsd)
            (hsPkgs.vector)
            (hsPkgs.statistics)
            (hsPkgs.gps)
          ];
        };
      };
    };
  }