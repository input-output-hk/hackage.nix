{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      optimize = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.18.0";
      identifier = {
        name = "hquantlib";
        version = "0.0.4.0";
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
      "hquantlib" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.random)
          (hsPkgs.time)
          (hsPkgs.containers)
          (hsPkgs.hmatrix)
          (hsPkgs.hmatrix-gsl)
          (hsPkgs.hmatrix-special)
          (hsPkgs.parallel)
          (hsPkgs.mersenne-random-pure64)
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
            (hsPkgs.mersenne-random-pure64)
            (hsPkgs.containers)
            (hsPkgs.time)
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