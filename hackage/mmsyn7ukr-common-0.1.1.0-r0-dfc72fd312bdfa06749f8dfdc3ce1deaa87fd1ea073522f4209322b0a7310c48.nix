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
      identifier = { name = "mmsyn7ukr-common"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "(c) Oleksandr Zhabenko 2019-2021";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/mmsyn7ukr-common";
      url = "";
      synopsis = "Some common for mmsyn7ukr and mmsyn7ukr-array functionality using SoX.";
      description = "A program and a library that can be used as a simple basic interface to some SoX functionality.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."mmsyn3" or (errorHandler.buildDepError "mmsyn3"))
        ];
        buildable = true;
      };
    };
  }