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
      identifier = { name = "mmsyn7s"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "olexandr543@yahoo.com";
      author = "(c) OleksandrZhabenko 2020";
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
        ];
        buildable = true;
      };
      exes = {
        "mmsyn7s" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."mmsyn6ukr" or (errorHandler.buildDepError "mmsyn6ukr"))
          ];
          buildable = true;
        };
      };
    };
  }