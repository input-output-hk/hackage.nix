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
      identifier = { name = "suffix-array"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2017 Joshua Simmons";
      maintainer = "joshua.simmons@emptypath.com";
      author = "Joshua Simmons";
      homepage = "https://github.com/kadoban/suffix-array#readme";
      url = "";
      synopsis = "Simple and moderately efficient suffix array implementation";
      description = "A simple implementation of a suffix array, with\nlongest-common-prefix array. While not\nasymptotically optimal, performs well in practice\nfor medium use.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "suffix-array-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."suffix-array" or (errorHandler.buildDepError "suffix-array"))
            ];
          buildable = true;
          };
        };
      tests = {
        "suffix-array-test" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."suffix-array" or (errorHandler.buildDepError "suffix-array"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "suffix-array-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."suffix-array" or (errorHandler.buildDepError "suffix-array"))
            ];
          buildable = true;
          };
        };
      };
    }