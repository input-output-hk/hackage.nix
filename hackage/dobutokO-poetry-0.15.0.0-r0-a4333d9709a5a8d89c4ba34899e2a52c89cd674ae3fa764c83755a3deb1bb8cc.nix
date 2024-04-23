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
      identifier = { name = "dobutokO-poetry"; version = "0.15.0.0"; };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/dobutokO-poetry";
      url = "";
      synopsis = "Helps to order the 7 or less Ukrainian words to obtain somewhat suitable for poetry or music text";
      description = "Helps to order the 7 or less Ukrainian words (or their concatenations) to obtain somewhat suitable for poetry or music text. Can be also used as a research instrument with generalized functions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."mmsyn3" or (errorHandler.buildDepError "mmsyn3"))
          (hsPkgs."mmsyn7s" or (errorHandler.buildDepError "mmsyn7s"))
          (hsPkgs."mmsyn6ukr" or (errorHandler.buildDepError "mmsyn6ukr"))
          (hsPkgs."uniqueness-periods" or (errorHandler.buildDepError "uniqueness-periods"))
          (hsPkgs."dobutokO-poetry-general" or (errorHandler.buildDepError "dobutokO-poetry-general"))
        ];
        buildable = true;
      };
      exes = {
        "dobutokO-poetry" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."mmsyn3" or (errorHandler.buildDepError "mmsyn3"))
            (hsPkgs."mmsyn7s" or (errorHandler.buildDepError "mmsyn7s"))
            (hsPkgs."mmsyn6ukr" or (errorHandler.buildDepError "mmsyn6ukr"))
            (hsPkgs."uniqueness-periods" or (errorHandler.buildDepError "uniqueness-periods"))
            (hsPkgs."dobutokO-poetry-general" or (errorHandler.buildDepError "dobutokO-poetry-general"))
          ];
          buildable = true;
        };
      };
    };
  }