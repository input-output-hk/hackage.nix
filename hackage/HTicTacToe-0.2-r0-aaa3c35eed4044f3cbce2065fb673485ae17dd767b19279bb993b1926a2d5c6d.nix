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
      specVersion = "1.4";
      identifier = { name = "HTicTacToe"; version = "0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "korcan_h@hotmail.com";
      author = "Korcan Hussein";
      homepage = "http://github.com/snkkid/HTicTacToe";
      url = "";
      synopsis = "An SDL tic-tac-toe game.";
      description = "Another tic-tac-toe game in Haskell using the SDL bindings.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "HTicTacToe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
            (hsPkgs."SDL-image" or (errorHandler.buildDepError "SDL-image"))
            (hsPkgs."SDL-ttf" or (errorHandler.buildDepError "SDL-ttf"))
          ];
          buildable = true;
        };
      };
    };
  }