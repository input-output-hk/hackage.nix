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
        name = "math-functions";
        version = "0.2.0.0";
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
      "math-functions" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.vector)
          (hsPkgs.primitive)
          (hsPkgs.vector-th-unbox)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.math-functions)
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.primitive)
            (hsPkgs.vector)
            (hsPkgs.vector-th-unbox)
            (hsPkgs.erf)
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