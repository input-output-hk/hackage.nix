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
      identifier = { name = "mmsyn7l"; version = "0.9.2.0"; };
      license = "MIT";
      copyright = "Oleksandr Zhabenko, 2020-2022, 2024";
      maintainer = "oleksandr.zhabenko@yahoo.com";
      author = "(c) OleksandrZhabenko 2020-2022, 2024";
      homepage = "https://hackage.haskell.org/package/mmsyn7l";
      url = "";
      synopsis = "Modifies the amplitudes of the sounds representations created by mmsyn7ukr-array and mmsyn7ukr packages.";
      description = "A program and a library to modify the amplitudes of the sounds representations. Can be used for Ukrainian sound or some other ones.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mmsyn7ukr-common" or (errorHandler.buildDepError "mmsyn7ukr-common"))
          (hsPkgs."mmsyn2-array" or (errorHandler.buildDepError "mmsyn2-array"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."end-of-exe" or (errorHandler.buildDepError "end-of-exe"))
        ];
        buildable = true;
      };
      exes = {
        "mmsyn7l" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mmsyn7ukr-common" or (errorHandler.buildDepError "mmsyn7ukr-common"))
            (hsPkgs."mmsyn2-array" or (errorHandler.buildDepError "mmsyn2-array"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."end-of-exe" or (errorHandler.buildDepError "end-of-exe"))
          ];
          buildable = true;
        };
      };
    };
  }