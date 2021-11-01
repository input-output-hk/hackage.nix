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
        version = "0.3.0.0";
        };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/ukrainian-phonetics-basic-array";
      url = "";
      synopsis = "A library to work with the basic Ukrainian phonetics and syllable segmentation.";
      description = "A library to work with the basic Ukrainian phonetics and syllable segmentation. Rewritten from the mmsyn6ukr and mmsyn7s packages. Comparing to the ukrainian-phonetics-basic package, all the vector-related functionality removed, it also removed from the dependencies and the mmsyn2 is changed to mmsyn2-array.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mmsyn2-array" or (errorHandler.buildDepError "mmsyn2-array"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mmsyn5" or (errorHandler.buildDepError "mmsyn5"))
          ];
        buildable = true;
        };
      };
    }