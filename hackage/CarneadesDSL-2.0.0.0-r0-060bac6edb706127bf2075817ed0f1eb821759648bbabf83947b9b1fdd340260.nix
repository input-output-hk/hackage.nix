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
      identifier = { name = "CarneadesDSL"; version = "2.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2014-2026 Bas van Gijzel";
      maintainer = "Bas van Gijzel <nenekotan+git@gmail.com>";
      author = "Bas van Gijzel, Henrik Nilsson";
      homepage = "https://github.com/nebasuke/CarneadesDSL";
      url = "";
      synopsis = "An implementation and DSL for the Carneades argumentation model.";
      description = "An implementation and domain specific language for the Carneades\nargumentation model. See \"Haskell Gets Argumentative\" in the\nProceedings of Symposium on Trends in Functional Programming\n(TFP 2012) by Bas van Gijzel and Henrik Nilsson. Thanks to Stefan\nSabev for providing initial code for the cyclicity check.\nFor the papers accompanying this library see \"Towards a framework for\nthe implementation and verification of translations between argumentation\nmodels\" and \"A principled approach to the implementation of argumentation\nmodels\", available at <https://scholar.google.com/citations?user=Xu4yjvwAAAAJ&hl>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
        ];
        buildable = true;
      };
      tests = {
        "carneadesdsl-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."CarneadesDSL" or (errorHandler.buildDepError "CarneadesDSL"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }