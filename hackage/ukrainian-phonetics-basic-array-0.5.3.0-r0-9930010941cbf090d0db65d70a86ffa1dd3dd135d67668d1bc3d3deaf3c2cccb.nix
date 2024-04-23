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
        version = "0.5.3.0";
      };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/ukrainian-phonetics-basic-array";
      url = "";
      synopsis = "A library to work with the basic Ukrainian phonetics and syllable segmentation.";
      description = "Rewritten from the mmsyn6ukr and mmsyn7s packages. Comparing to the ukrainian-phonetics-basic package, all the vector-related functionality removed, it also removed from the dependencies and the mmsyn2 is changed to mmsyn2-array. Since 0.4.0.0 version switched to the more optimized Int8-based functionality. The modules that do not use Int8 after ugrading the phonetic-languages-simplified-examples-array to the Int8-based functionality are planned to be moved to the new package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mmsyn2-array" or (errorHandler.buildDepError "mmsyn2-array"))
          (hsPkgs."mmsyn5" or (errorHandler.buildDepError "mmsyn5"))
          (hsPkgs."ukrainian-phonetics-common" or (errorHandler.buildDepError "ukrainian-phonetics-common"))
        ];
        buildable = true;
      };
    };
  }