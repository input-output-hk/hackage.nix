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
      identifier = { name = "mmsyn7s"; version = "0.6.6.0"; };
      license = "MIT";
      copyright = "(c) OleksandrZhabenko 2020";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/mmsyn7s";
      url = "";
      synopsis = "Shows a sorted list of the Ukrainian sounds representations that can be used by mmsyn7 series of programs";
      description = "A program and a library that show a sorted list of the Ukrainian sounds representations that can be used by mmsyn7 series of programs";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."mmsyn6ukr" or (errorHandler.buildDepError "mmsyn6ukr"))
          (hsPkgs."mmsyn2" or (errorHandler.buildDepError "mmsyn2"))
          (hsPkgs."mmsyn5" or (errorHandler.buildDepError "mmsyn5"))
          ];
        buildable = true;
        };
      exes = {
        "mmsyn7s" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."mmsyn6ukr" or (errorHandler.buildDepError "mmsyn6ukr"))
            (hsPkgs."mmsyn2" or (errorHandler.buildDepError "mmsyn2"))
            (hsPkgs."mmsyn5" or (errorHandler.buildDepError "mmsyn5"))
            ];
          buildable = true;
          };
        };
      };
    }