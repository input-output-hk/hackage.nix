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
      specVersion = "1.2";
      identifier = { name = "GeBoP"; version = "1.7.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Maarten Löffler <loffler@cs.uu.nl>";
      author = "Maarten Löffler";
      homepage = "http://www.haskell.org/haskellwiki/GeBoP";
      url = "";
      synopsis = "Several games";
      description = "The games: Ataxx, Bamp, Halma, Hez, Kram, Nim, Reversi, TicTacToe, and Zenix";
      buildType = "Simple";
    };
    components = {
      exes = {
        "gebop" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."wxcore" or (errorHandler.buildDepError "wxcore"))
            (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
          buildable = true;
        };
      };
    };
  }