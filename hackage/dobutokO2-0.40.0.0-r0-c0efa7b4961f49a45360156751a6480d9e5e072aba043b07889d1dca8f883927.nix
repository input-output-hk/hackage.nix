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
      identifier = { name = "dobutokO2"; version = "0.40.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/dobutokO2";
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
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."mmsyn3" or (errorHandler.buildDepError "mmsyn3"))
          (hsPkgs."mmsyn7s" or (errorHandler.buildDepError "mmsyn7s"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."mmsyn7ukr" or (errorHandler.buildDepError "mmsyn7ukr"))
          (hsPkgs."mmsyn2" or (errorHandler.buildDepError "mmsyn2"))
          (hsPkgs."mmsyn6ukr" or (errorHandler.buildDepError "mmsyn6ukr"))
          (hsPkgs."mmsyn7l" or (errorHandler.buildDepError "mmsyn7l"))
        ];
        buildable = true;
      };
      exes = {
        "dobutokO2" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."mmsyn3" or (errorHandler.buildDepError "mmsyn3"))
            (hsPkgs."mmsyn7s" or (errorHandler.buildDepError "mmsyn7s"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mmsyn7ukr" or (errorHandler.buildDepError "mmsyn7ukr"))
            (hsPkgs."mmsyn2" or (errorHandler.buildDepError "mmsyn2"))
            (hsPkgs."mmsyn6ukr" or (errorHandler.buildDepError "mmsyn6ukr"))
            (hsPkgs."mmsyn7l" or (errorHandler.buildDepError "mmsyn7l"))
          ];
          buildable = true;
        };
      };
    };
  }