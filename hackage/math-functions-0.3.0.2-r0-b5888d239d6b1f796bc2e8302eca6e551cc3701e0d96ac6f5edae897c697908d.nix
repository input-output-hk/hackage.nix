{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { system-expm1 = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "math-functions"; version = "0.3.0.2"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "Alexey Khudyakov <alexey.skladnoy@gmail.com>";
      author = "Bryan O'Sullivan <bos@serpentine.com>,\nAlexey Khudyakov <alexey.skladnoy@gmail.com>";
      homepage = "https://github.com/bos/math-functions";
      url = "";
      synopsis = "Collection of tools for numeric computations";
      description = "This library contain collection of various utilities for numerical\ncomputing. So far there're special mathematical functions,\ncompensated summation algorithm, summation of series, root finding\nfor real functions, polynomial summation and Chebyshev\npolynomials.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.data-default-class)
          (hsPkgs.vector)
          (hsPkgs.primitive)
          (hsPkgs.vector-th-unbox)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.math-functions)
            (hsPkgs.data-default-class)
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