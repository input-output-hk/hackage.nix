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
        name = "algorithmic-composition-additional";
        version = "0.1.1.0";
      };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/algorithmic-composition-additional";
      url = "";
      synopsis = "Helps to create experimental music from a file (or its part) and a Ukrainian text.";
      description = "It can also generate a timbre for the notes. Uses SoX inside.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."mmsyn3" or (errorHandler.buildDepError "mmsyn3"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."mmsyn7ukr-common" or (errorHandler.buildDepError "mmsyn7ukr-common"))
          (hsPkgs."mmsyn2-array" or (errorHandler.buildDepError "mmsyn2-array"))
          (hsPkgs."ukrainian-phonetics-basic-array" or (errorHandler.buildDepError "ukrainian-phonetics-basic-array"))
          (hsPkgs."mmsyn7l" or (errorHandler.buildDepError "mmsyn7l"))
          (hsPkgs."phonetic-languages-simplified-base" or (errorHandler.buildDepError "phonetic-languages-simplified-base"))
          (hsPkgs."foldable-ix" or (errorHandler.buildDepError "foldable-ix"))
          (hsPkgs."algorithmic-composition-basic" or (errorHandler.buildDepError "algorithmic-composition-basic"))
        ];
        buildable = true;
      };
      exes = {
        "acb" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."mmsyn3" or (errorHandler.buildDepError "mmsyn3"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mmsyn7ukr-common" or (errorHandler.buildDepError "mmsyn7ukr-common"))
            (hsPkgs."mmsyn2-array" or (errorHandler.buildDepError "mmsyn2-array"))
            (hsPkgs."ukrainian-phonetics-basic-array" or (errorHandler.buildDepError "ukrainian-phonetics-basic-array"))
            (hsPkgs."mmsyn7l" or (errorHandler.buildDepError "mmsyn7l"))
            (hsPkgs."phonetic-languages-simplified-base" or (errorHandler.buildDepError "phonetic-languages-simplified-base"))
            (hsPkgs."foldable-ix" or (errorHandler.buildDepError "foldable-ix"))
            (hsPkgs."algorithmic-composition-basic" or (errorHandler.buildDepError "algorithmic-composition-basic"))
          ];
          buildable = true;
        };
      };
    };
  }