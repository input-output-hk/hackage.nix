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
      identifier = { name = "mmsyn3"; version = "0.1.2.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "http://hackage.haskell.org/package/mmsyn3";
      url = "";
      synopsis = "A small library to deal with executable endings";
      description = "A small library to deal with executable endings. Uses a Maybe data representation inside an IO monad.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
        buildable = true;
        };
      };
    }