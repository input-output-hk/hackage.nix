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
        name = "phonetic-languages-ukrainian-array";
        version = "0.2.1.0";
      };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/phonetic-languages-ukrainian-array";
      url = "";
      synopsis = "Prepares Ukrainian text to be used as a phonetic language text";
      description = "Prepares Ukrainian text to be used as a phonetic language text. Applies needed minimal grammar connections so that the text afterwards can be processed by dobutokO-poetry related programs. Uses arrays instead of vectors.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mmsyn2-array" or (errorHandler.buildDepError "mmsyn2-array"))
          (hsPkgs."mmsyn5" or (errorHandler.buildDepError "mmsyn5"))
        ];
        buildable = true;
      };
    };
  }