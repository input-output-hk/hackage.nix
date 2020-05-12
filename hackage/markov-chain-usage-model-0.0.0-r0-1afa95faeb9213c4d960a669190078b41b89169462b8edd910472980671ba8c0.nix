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
      specVersion = "1.12";
      identifier = { name = "markov-chain-usage-model"; version = "0.0.0"; };
      license = "BSD-2-Clause";
      copyright = "Copyright (C) 2018-2019, HERE Europe B.V.";
      maintainer = "stevan.andjelkovic@here.com";
      author = "Stevan Andjelkovic";
      homepage = "https://github.com/advancedtelematic/markov-chain-usage-model#readme";
      url = "";
      synopsis = "Computations for Markov chain usage models";
      description = "Please see the README on GitHub at <https://github.com/advancedtelematic/markov-chain-usage-model#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "markov-chain-usage-model-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."markov-chain-usage-model" or (errorHandler.buildDepError "markov-chain-usage-model"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-discover" or (errorHandler.buildDepError "tasty-discover"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }