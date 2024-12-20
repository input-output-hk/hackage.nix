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
      identifier = { name = "mmsyn7ukr-array"; version = "0.3.0.0"; };
      license = "MIT";
      copyright = "(c) Oleksandr Zhabenko 2019-2022, 2024";
      maintainer = "oleksandr.zhabenko@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/mmsyn7ukr-array";
      url = "";
      synopsis = "A simple reduced basic interface to some SoX functionality or to produce a voice that can be used by dobutokO2 and other similar packages";
      description = "A reduced set of modules  and functionality needed to dobutokO2-array package and probably some other ones. Is rewritten from the mmsyn7ukr-0.17.0.0 package to reduce the needed dependencies.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."mmsyn2-array" or (errorHandler.buildDepError "mmsyn2-array"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."end-of-exe" or (errorHandler.buildDepError "end-of-exe"))
          (hsPkgs."mmsyn7ukr-common" or (errorHandler.buildDepError "mmsyn7ukr-common"))
        ];
        buildable = true;
      };
    };
  }