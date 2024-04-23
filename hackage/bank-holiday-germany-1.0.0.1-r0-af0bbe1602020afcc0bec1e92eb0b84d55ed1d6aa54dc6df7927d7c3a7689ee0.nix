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
      specVersion = "3.6";
      identifier = { name = "bank-holiday-germany"; version = "1.0.0.1"; };
      license = "MIT";
      copyright = "2024 Jakob Schöttl";
      maintainer = "jakob.schoettl@intensovet.de";
      author = "Jakob Schöttl";
      homepage = "https://github.com/schoettl/bank-holiday-germany#readme";
      url = "";
      synopsis = "German bank holidays and public holidays";
      description = "Calculation of bank holidays and most public holidays in Germany.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bank-holiday-germany" or (errorHandler.buildDepError "bank-holiday-germany"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-hedgehog" or (errorHandler.buildDepError "hspec-hedgehog"))
          ];
          buildable = true;
        };
      };
    };
  }