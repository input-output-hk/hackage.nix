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
      identifier = { name = "CarneadesIntoDung"; version = "2.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2014-2026 Bas van Gijzel";
      maintainer = "Bas van Gijzel <nenekotan+git@gmail.com>";
      author = "Bas van Gijzel, Henrik Nilsson";
      homepage = "https://github.com/nebasuke/CarneadesIntoDung";
      url = "";
      synopsis = "A translation from the Carneades argumentation model into Dung's AFs.";
      description = "A translation from the Carneades argumentation model\n(<http://hackage.haskell.org/package/CarneadesDSL>) into Dung's\nargumentation frameworks (<http://hackage.haskell.org/package/Dung>).\nThis package provides a translation function and correspondence\nproperties. For the papers accompanying this library see \"Towards a\nframework for the implementation and verification of translations\nbetween argumentation models\" and \"A principled approach to the\nimplementation of argumentation models\", available at\n<https://scholar.google.com/citations?user=Xu4yjvwAAAAJ&hl>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."CarneadesDSL" or (errorHandler.buildDepError "CarneadesDSL"))
          (hsPkgs."Dung" or (errorHandler.buildDepError "Dung"))
        ];
        buildable = true;
      };
      exes = {
        "caell" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."CarneadesIntoDung" or (errorHandler.buildDepError "CarneadesIntoDung"))
            (hsPkgs."CarneadesDSL" or (errorHandler.buildDepError "CarneadesDSL"))
            (hsPkgs."Dung" or (errorHandler.buildDepError "Dung"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          ];
          buildable = true;
        };
      };
      tests = {
        "carneadesintodung-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."CarneadesIntoDung" or (errorHandler.buildDepError "CarneadesIntoDung"))
            (hsPkgs."CarneadesDSL" or (errorHandler.buildDepError "CarneadesDSL"))
            (hsPkgs."Dung" or (errorHandler.buildDepError "Dung"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }