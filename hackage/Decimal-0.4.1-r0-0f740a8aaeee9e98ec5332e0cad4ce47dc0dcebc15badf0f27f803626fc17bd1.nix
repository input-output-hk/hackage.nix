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
      identifier = { name = "Decimal"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "Paul Johnson, 2013";
      maintainer = "paul@cogito.org.uk";
      author = "Paul Johnson";
      homepage = "https://github.com/PaulJohnson/Haskell-Decimal";
      url = "";
      synopsis = "Decimal numbers with variable precision";
      description = "A decimal number has an integer mantissa and a negative\nexponent.  The exponent can be interpreted as the number\nof decimal places in the value.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
        ];
        buildable = true;
      };
      tests = {
        "Main" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
          buildable = true;
        };
      };
    };
  }