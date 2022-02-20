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
        name = "ukrainian-phonetics-common";
        version = "0.1.1.0";
        };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/ukrainian-phonetics-common";
      url = "";
      synopsis = "A library to work with the basic Ukrainian phonetics and syllable segmentation. ";
      description = "The functionality that is shared by the two dependent packages - ukrainian-phonetics-basic-array and ukranian-phonetics-basic-array-bytestring.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mmsyn2-array" or (errorHandler.buildDepError "mmsyn2-array"))
          ];
        buildable = true;
        };
      };
    }