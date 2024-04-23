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
      identifier = { name = "tateti-tateti"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2015 Ezequiel A. Alvarez";
      maintainer = "welcometothechango@gmail.com";
      author = "Ezequiel A. Alvarez";
      homepage = "http://github.com/alvare/tateti-tateti#readme";
      url = "";
      synopsis = "Meta tic-tac-toe ncurses game.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      exes = {
        "tateti-tateti" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ncurses" or (errorHandler.buildDepError "ncurses"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."lens-simple" or (errorHandler.buildDepError "lens-simple"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
      };
    };
  }