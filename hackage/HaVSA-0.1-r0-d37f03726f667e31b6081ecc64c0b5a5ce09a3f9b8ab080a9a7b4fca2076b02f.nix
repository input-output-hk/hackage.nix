{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8.0.6";
      identifier = {
        name = "HaVSA";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "creswick@gmail.com";
      author = "Rogan Creswick";
      homepage = "";
      url = "";
      synopsis = "<Project description>";
      description = "<Project description>";
      buildType = "Simple";
    };
    components = {
      "HaVSA" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.logict)
        ];
      };
      exes = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.logict)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck)
            (hsPkgs.test-framework-hunit)
          ];
        };
      };
    };
  }