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
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Thomas DuBuisson";
      author = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "For manipulating GPS coordinates and trails.";
      description = "Useful for manipulating GPS coordinages (in various forms), building paths, and performing basic computations.";
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
          (hsPkgs.data-lens)
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