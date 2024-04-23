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
        name = "ukrainian-phonetics-basic-array";
        version = "0.7.1.1";
      };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "oleksandr.zhabenko@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/ukrainian-phonetics-basic-array";
      url = "";
      synopsis = "A library to work with the basic Ukrainian phonetics and syllable segmentation.";
      description = "Rewritten from the mmsyn6ukr and mmsyn7s packages. Comparing to the ukrainian-phonetics-basic package, all the vector-related functionality removed, it also removed from the dependencies and the mmsyn2 is changed to mmsyn2-array. Since 0.4.0.0 version switched to the more optimized Int8-based functionality. The old modules with bytestring dependencies since the 0.6.0.0 version moved to the other package ukrainian-phonetics-basic-array-bytestring to reduce the actual dependencies for the phonetic languages concerning packages.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mmsyn2-array" or (errorHandler.buildDepError "mmsyn2-array"))
          (hsPkgs."intermediate-structures" or (errorHandler.buildDepError "intermediate-structures"))
          (hsPkgs."ukrainian-phonetics-common" or (errorHandler.buildDepError "ukrainian-phonetics-common"))
        ];
        buildable = true;
      };
    };
  }