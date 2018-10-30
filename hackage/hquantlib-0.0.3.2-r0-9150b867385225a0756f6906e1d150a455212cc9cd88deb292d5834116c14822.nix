{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { optimize = true; };
    package = {
      specVersion = "1.18.0";
      identifier = {
        name = "hquantlib";
        version = "0.0.3.2";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Pavel Ryzhov <pavel.ryzhov@gmail.com>";
      author = "Pavel Ryzhov";
      homepage = "http://github.com/paulrzcz/hquantlib.git";
      url = "";
      synopsis = "HQuantLib is a port of essencial parts of QuantLib to Haskell";
      description = "HQuantLib is intended to be a functional style port of QuantLib (http://quantlib.org)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.containers)
          (hsPkgs.hmatrix)
          (hsPkgs.hmatrix-gsl)
          (hsPkgs.hmatrix-special)
          (hsPkgs.parallel)
          (hsPkgs.mersenne-random)
          (hsPkgs.statistics)
          (hsPkgs.vector)
          (hsPkgs.vector-algorithms)
        ];
      };
      exes = {
        "mctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hquantlib)
            (hsPkgs.parallel)
            (hsPkgs.mersenne-random)
            (hsPkgs.containers)
          ];
        };
      };
      tests = {
        "main-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }