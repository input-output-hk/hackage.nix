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
      specVersion = "3.4";
      identifier = { name = "real-dice"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "2024 Kyle Beechly";
      maintainer = "contact@kaBeech.com";
      author = "Kyle Beechly";
      homepage = "https://github.com/kaBeech/real-dice";
      url = "";
      synopsis = "Random number generation based on physical media touched by humans";
      description = "This package provides random data gathered via human interaction with the physical world as well as utilities to leverage this data for random number generation and other RNG-based tasks";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."primes" or (errorHandler.buildDepError "primes"))
        ];
        buildable = true;
      };
      exes = {
        "real-dice" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."real-dice" or (errorHandler.buildDepError "real-dice"))
          ];
          buildable = true;
        };
      };
      tests = {
        "real-dice-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."real-dice" or (errorHandler.buildDepError "real-dice"))
            (hsPkgs."primes" or (errorHandler.buildDepError "primes"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
    };
  }