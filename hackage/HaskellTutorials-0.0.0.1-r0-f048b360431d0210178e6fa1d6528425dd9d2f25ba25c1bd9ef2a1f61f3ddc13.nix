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
      identifier = { name = "HaskellTutorials"; version = "0.0.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "mrlsd@ya.ru";
      author = "Evgeny Ukganov";
      homepage = "https://github.com/mrLSD/HaskellTutorials";
      url = "";
      synopsis = "Haskell Tutorials by Evgeny Ukhanov";
      description = "Step-by-Step tutorials at learning process";
      buildType = "Simple";
    };
    components = {
      exes = {
        "Haskell.Tutorials" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          ];
          buildable = true;
        };
      };
    };
  }