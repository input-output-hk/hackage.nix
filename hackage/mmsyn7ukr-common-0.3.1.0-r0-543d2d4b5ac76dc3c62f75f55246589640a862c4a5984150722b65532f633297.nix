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
      identifier = { name = "mmsyn7ukr-common"; version = "0.3.1.0"; };
      license = "MIT";
      copyright = "(c) Oleksandr Zhabenko 2019-2022, 2024";
      maintainer = "oleksandr.zhabenko@yahoo.com";
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
          (hsPkgs."end-of-exe" or (errorHandler.buildDepError "end-of-exe"))
        ];
        buildable = true;
      };
    };
  }