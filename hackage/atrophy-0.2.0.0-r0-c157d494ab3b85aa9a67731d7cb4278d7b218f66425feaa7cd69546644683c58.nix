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
      specVersion = "3.0";
      identifier = { name = "atrophy"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "2022 Zachary Churchill";
      maintainer = "Zachary Churchill <zacharyachurchill@gmail.com>";
      author = "Zachary Churchill <zacharyachurchill@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Faster integer division and modulus operations";
      description = "Fast div/mod via arithmetic strength reduction.\n.\nPrecompute a divisor that is only known at runtime, and divide by it with a\nmultiplication and a few shifts instead of a hardware division. Also provides\nstrength reduction for divisors and numerators known at compile time, which\nGHC does not do on its own, and multi-limb division and multiplication.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."wide-word" or (errorHandler.buildDepError "wide-word"))
        ];
        buildable = true;
      };
      tests = {
        "atrophy-test" = {
          depends = [
            (hsPkgs."atrophy" or (errorHandler.buildDepError "atrophy"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."wide-word" or (errorHandler.buildDepError "wide-word"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "atrophy-bench" = {
          depends = [
            (hsPkgs."atrophy" or (errorHandler.buildDepError "atrophy"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."wide-word" or (errorHandler.buildDepError "wide-word"))
          ];
          buildable = true;
        };
      };
    };
  }