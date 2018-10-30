{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "GeneralTicTacToe";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "contact@afonsomatos.com";
      author = "Afonso Matos";
      homepage = "http://afonso.xyz";
      url = "";
      synopsis = "A general TicTacToe game implementation.";
      description = "Tic-tac-toe (also known as Noughts and crosses or Xs and\nOs) is a paper-and-pencil game for two players, X and O,\nwho take turns marking the spaces in a 3×3 grid. The player\nwho succeeds in placing three of their marks in a\nhorizontal, vertical, or diagonal row wins the game.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "GeneralTicTacToe" = {
          depends  = [ (hsPkgs.base) ];
        };
      };
    };
  }