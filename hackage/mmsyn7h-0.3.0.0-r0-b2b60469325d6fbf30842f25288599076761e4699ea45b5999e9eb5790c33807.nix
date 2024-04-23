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
      identifier = { name = "mmsyn7h"; version = "0.3.0.0"; };
      license = "MIT";
      copyright = "(c) Oleksandr Zhabenko 2019";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/mmsyn7h";
      url = "";
      synopsis = "A program and a library that produces a sound recording specified by the Ukrainian text.";
      description = "A program and a library that are used with mmsyn7ukr (or separately) and are similar to mmsyn6ukr executable. The program uses the data files in the current directory instead of ones in the system defined directories. It reads Ukrainian text with the given by data files sounds.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mmsyn2" or (errorHandler.buildDepError "mmsyn2"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."mmsyn6ukr" or (errorHandler.buildDepError "mmsyn6ukr"))
          (hsPkgs."mmsyn3" or (errorHandler.buildDepError "mmsyn3"))
        ];
        buildable = true;
      };
      exes = {
        "mmsyn7h" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."mmsyn2" or (errorHandler.buildDepError "mmsyn2"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mmsyn6ukr" or (errorHandler.buildDepError "mmsyn6ukr"))
            (hsPkgs."mmsyn3" or (errorHandler.buildDepError "mmsyn3"))
          ];
          buildable = true;
        };
      };
    };
  }