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
      specVersion = "2.4";
      identifier = { name = "atrophy"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2022 Zachary Churchill";
      maintainer = "Zachary Churchill <zacharyachurchill@gmail.com>";
      author = "Zachary Churchill <zacharyachurchill@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Faster integer division and modulus operations ";
      description = "Fast div/mod via arithmetic strength reduction.\nGood compilers already perform this optimization for divisors that are known at compile time; this library enables this optimization for divisors that are only known at runtime.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."wide-word" or (errorHandler.buildDepError "wide-word"))
          (hsPkgs."contiguous" or (errorHandler.buildDepError "contiguous"))
          ];
        buildable = true;
        };
      tests = {
        "atrophy-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."wide-word" or (errorHandler.buildDepError "wide-word"))
            (hsPkgs."contiguous" or (errorHandler.buildDepError "contiguous"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-classes" or (errorHandler.buildDepError "quickcheck-classes"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."atrophy" or (errorHandler.buildDepError "atrophy"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "atrophy-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."atrophy" or (errorHandler.buildDepError "atrophy"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }