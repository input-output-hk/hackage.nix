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
      identifier = {
        name = "dobutokO-poetry-general-languages";
        version = "0.2.0.0";
        };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/dobutokO-poetry-general-languages";
      url = "";
      synopsis = "Helps to order the 7 or less words to obtain somewhat suitable for poetry or music text";
      description = "Helps to order the 7 or less words (or their concatenations) to obtain somewhat suitable for poetry or music text. Can be also used as a research instrument with generalized functions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."mmsyn3" or (errorHandler.buildDepError "mmsyn3"))
          (hsPkgs."mmsyn6ukr" or (errorHandler.buildDepError "mmsyn6ukr"))
          (hsPkgs."uniqueness-periods-general" or (errorHandler.buildDepError "uniqueness-periods-general"))
          (hsPkgs."dobutokO-poetry-general" or (errorHandler.buildDepError "dobutokO-poetry-general"))
          ];
        buildable = true;
        };
      };
    }