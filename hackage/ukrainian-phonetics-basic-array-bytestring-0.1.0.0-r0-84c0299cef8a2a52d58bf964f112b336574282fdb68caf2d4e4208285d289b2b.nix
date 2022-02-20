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
        name = "ukrainian-phonetics-basic-array-bytestring";
        version = "0.1.0.0";
        };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/ukrainian-phonetics-basic-array";
      url = "";
      synopsis = "A library to work with the basic Ukrainian phonetics and syllable segmentation.";
      description = "The functionality that uses bytestings are moved to this package from the ukrainian-phonetics-basic-array package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mmsyn2-array" or (errorHandler.buildDepError "mmsyn2-array"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mmsyn5" or (errorHandler.buildDepError "mmsyn5"))
          (hsPkgs."ukrainian-phonetics-common" or (errorHandler.buildDepError "ukrainian-phonetics-common"))
          ];
        buildable = true;
        };
      };
    }