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
      identifier = { name = "tictactoe3d"; version = "0.1.0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "ryoka0418@gmail.com";
      author = "ryo0ka";
      homepage = "https://github.com/ryo0ka/tictactoe3d";
      url = "";
      synopsis = "3D Tic-Tac-Toe game";
      description = "Defines 3D Tic-Tac-Toe game logic and state machines.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."tuples-homogenous-h98" or (errorHandler.buildDepError "tuples-homogenous-h98"))
        ];
        buildable = true;
      };
    };
  }