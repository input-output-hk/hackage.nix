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
      identifier = { name = "game-of-life"; version = "0.1.0.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "marcusbuffett@me.com";
      author = "Marcus Buffett";
      homepage = "http://github.com/marcusbuffett/game-of-life";
      url = "";
      synopsis = "Conway's Game of Life";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "game-of-life" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."hscurses" or (errorHandler.buildDepError "hscurses"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }