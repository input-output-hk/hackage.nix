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
      identifier = { name = "hoodie"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "denis.volk@gmail.com";
      author = "Denis Volk";
      homepage = "";
      url = "";
      synopsis = "A small, toy roguelike";
      description = "A small roguelike; perhaps 10% of a real one. In development";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hoodie" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
            (hsPkgs."astar" or (errorHandler.buildDepError "astar"))
            (hsPkgs."ncurses" or (errorHandler.buildDepError "ncurses"))
            (hsPkgs."hfov" or (errorHandler.buildDepError "hfov"))
            ];
          buildable = true;
          };
        };
      };
    }