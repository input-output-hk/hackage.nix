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
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "cyclotomic"; version = "1.1.2"; };
      license = "GPL-3.0-only";
      copyright = "(c) Scott N. Walck 2012-2020";
      maintainer = "Scott N. Walck <walck@lvc.edu>";
      author = "Scott N. Walck";
      homepage = "";
      url = "";
      synopsis = "A subfield of the complex numbers for exact calculation.";
      description = "The cyclotomic numbers are a subset of the\ncomplex numbers that are represented exactly, enabling exact\ncomputations and equality comparisons.  They\ncontain the Gaussian rationals (complex numbers\nof the form p + q i with p and q rational), as well\nas all complex roots of unity.  The\ncyclotomic numbers contain the square roots of\nall rational numbers.  They contain the sine and\ncosine of all rational multiples of pi.\nThe cyclotomic numbers form a field, being closed under\naddition, subtraction, mutiplication, and division.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."arithmoi" or (errorHandler.buildDepError "arithmoi"))
          ];
        buildable = true;
        };
      tests = {
        "cyclotomic-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."cyclotomic" or (errorHandler.buildDepError "cyclotomic"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-smallcheck" or (errorHandler.buildDepError "test-framework-smallcheck"))
            ];
          buildable = true;
          };
        };
      };
    }