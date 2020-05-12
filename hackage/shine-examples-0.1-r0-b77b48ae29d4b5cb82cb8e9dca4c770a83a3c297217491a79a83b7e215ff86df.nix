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
      specVersion = "2.2";
      identifier = { name = "shine-examples"; version = "0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Francesco Gazzetta <fgaz@fgaz.me>";
      author = "";
      homepage = "https://github.com/fgaz/shine/tree/master/shine-examples";
      url = "";
      synopsis = "Examples for the shine package";
      description = "This package contains some examples of use of the shine package,\nfrom animations to a simple game.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "animated-shapes" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."shine" or (errorHandler.buildDepError "shine"))
            (hsPkgs."ghcjs-dom" or (errorHandler.buildDepError "ghcjs-dom"))
            ];
          buildable = if !(compiler.isGhcjs && true) then false else true;
          };
        "simple-interaction" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."shine" or (errorHandler.buildDepError "shine"))
            (hsPkgs."ghcjs-dom" or (errorHandler.buildDepError "ghcjs-dom"))
            ];
          buildable = if !(compiler.isGhcjs && true) then false else true;
          };
        "spaceinvaders" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."shine" or (errorHandler.buildDepError "shine"))
            (hsPkgs."ghcjs-dom" or (errorHandler.buildDepError "ghcjs-dom"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."keycode" or (errorHandler.buildDepError "keycode"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = if !(compiler.isGhcjs && true) then false else true;
          };
        "mountaincar" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."shine" or (errorHandler.buildDepError "shine"))
            (hsPkgs."ghcjs-dom" or (errorHandler.buildDepError "ghcjs-dom"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."keycode" or (errorHandler.buildDepError "keycode"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = if !(compiler.isGhcjs && true) then false else true;
          };
        };
      };
    }