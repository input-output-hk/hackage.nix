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
        name = "algorithmic-composition-basic";
        version = "0.6.0.0";
      };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/algorithmic-composition-basic";
      url = "";
      synopsis = "Helps to create experimental music from a file (or its part) and a Ukrainian text.";
      description = "It can also generate a timbre for the notes. Uses SoX inside.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."mmsyn3" or (errorHandler.buildDepError "mmsyn3"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."mmsyn7ukr-common" or (errorHandler.buildDepError "mmsyn7ukr-common"))
          (hsPkgs."mmsyn2-array" or (errorHandler.buildDepError "mmsyn2-array"))
          (hsPkgs."ukrainian-phonetics-basic-array" or (errorHandler.buildDepError "ukrainian-phonetics-basic-array"))
          (hsPkgs."mmsyn7l" or (errorHandler.buildDepError "mmsyn7l"))
          (hsPkgs."foldable-ix" or (errorHandler.buildDepError "foldable-ix"))
          (hsPkgs."process-sequential" or (errorHandler.buildDepError "process-sequential"))
        ];
        buildable = true;
      };
    };
  }