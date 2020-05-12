{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { system-expm1 = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "math-functions"; version = "0.3.1.0"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."vector-th-unbox" or (errorHandler.buildDepError "vector-th-unbox"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."math-functions" or (errorHandler.buildDepError "math-functions"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-th-unbox" or (errorHandler.buildDepError "vector-th-unbox"))
            (hsPkgs."erf" or (errorHandler.buildDepError "erf"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            ];
          buildable = true;
          };
        };
      };
    }