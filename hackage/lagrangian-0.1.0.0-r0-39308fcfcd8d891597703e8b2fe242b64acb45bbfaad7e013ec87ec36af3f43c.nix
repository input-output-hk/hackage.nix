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
        name = "lagrangian";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jonathangfischoff@gmail.com";
      author = "Jonathan Fischoff";
      homepage = "http://github.com/jfischoff/lagrangian";
      url = "";
      synopsis = "Solve lagrangian multiplier problems";
      description = "";
      buildType = "Simple";
    };
    components = {
      "lagrangian" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.nonlinear-optimization)
          (hsPkgs.vector)
          (hsPkgs.ad)
          (hsPkgs.hmatrix)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.nonlinear-optimization)
            (hsPkgs.vector)
            (hsPkgs.ad)
            (hsPkgs.hmatrix)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }