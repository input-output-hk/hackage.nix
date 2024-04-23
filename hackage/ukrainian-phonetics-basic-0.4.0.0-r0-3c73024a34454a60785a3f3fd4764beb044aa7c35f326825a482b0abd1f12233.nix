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
      identifier = { name = "ukrainian-phonetics-basic"; version = "0.4.0.0"; };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/ukrainian-phonetics-basic";
      url = "";
      synopsis = "A library to work with the basic Ukrainian phonetics and syllable segmentation.";
      description = "A library to work with the basic Ukrainian phonetics and syllable segmentation. Rewritten from the mmsyn6ukr and mmsyn7s packages.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."mmsyn2" or (errorHandler.buildDepError "mmsyn2"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mmsyn5" or (errorHandler.buildDepError "mmsyn5"))
        ];
        buildable = true;
      };
    };
  }