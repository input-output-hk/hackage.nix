{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "math-functions";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
      author = "Bryan O'Sullivan <bos@serpentine.com>,\nAleksey Khudyakov <alexey.skladnoy@gmail.com>";
      homepage = "https://github.com/bos/math-functions";
      url = "";
      synopsis = "Special functions and Chebyshev polynomials";
      description = "This library provides implementations of special mathematical\nfunctions and Chebyshev polynomials.  These functions are often\nuseful in statistical and numerical computing.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.erf)
        ];
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.math-functions)
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.ieee754)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
    };
  }