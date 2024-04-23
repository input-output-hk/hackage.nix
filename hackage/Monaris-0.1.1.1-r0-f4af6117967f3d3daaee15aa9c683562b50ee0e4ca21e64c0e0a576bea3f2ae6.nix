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
      specVersion = "1.8";
      identifier = { name = "Monaris"; version = "0.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "fumiexcel@gmail.com";
      author = "Fumiaki Kinishota";
      homepage = "https://github.com/fumieval/Monaris/";
      url = "";
      synopsis = "A simple tetris clone";
      description = "A tetris clone written Haskell.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "Monaris" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."vect" or (errorHandler.buildDepError "vect"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."free-game" or (errorHandler.buildDepError "free-game"))
          ];
          buildable = true;
        };
      };
    };
  }