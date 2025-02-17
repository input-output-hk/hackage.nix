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
      identifier = { name = "dobutokO2"; version = "0.45.1.1"; };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "olexandr.zhabenko@yahoo.com";
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
          (hsPkgs."end-of-exe" or (errorHandler.buildDepError "end-of-exe"))
          (hsPkgs."mmsyn7ukr-common" or (errorHandler.buildDepError "mmsyn7ukr-common"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."mmsyn2-array" or (errorHandler.buildDepError "mmsyn2-array"))
          (hsPkgs."aftovolio" or (errorHandler.buildDepError "aftovolio"))
          (hsPkgs."quantizer" or (errorHandler.buildDepError "quantizer"))
          (hsPkgs."mmsyn7l" or (errorHandler.buildDepError "mmsyn7l"))
          (hsPkgs."mmsyn7ukr-array" or (errorHandler.buildDepError "mmsyn7ukr-array"))
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
            (hsPkgs."end-of-exe" or (errorHandler.buildDepError "end-of-exe"))
            (hsPkgs."mmsyn7ukr-common" or (errorHandler.buildDepError "mmsyn7ukr-common"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mmsyn2-array" or (errorHandler.buildDepError "mmsyn2-array"))
            (hsPkgs."aftovolio" or (errorHandler.buildDepError "aftovolio"))
            (hsPkgs."quantizer" or (errorHandler.buildDepError "quantizer"))
            (hsPkgs."mmsyn7l" or (errorHandler.buildDepError "mmsyn7l"))
            (hsPkgs."mmsyn7ukr-array" or (errorHandler.buildDepError "mmsyn7ukr-array"))
          ];
          buildable = true;
        };
      };
    };
  }