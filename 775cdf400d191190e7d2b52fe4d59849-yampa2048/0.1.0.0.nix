{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.18";
      identifier = {
        name = "yampa2048";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "(C) 2015 Konstantin Saveljev, Josh Kirklin, Maia Werbos";
      maintainer = "Konstantin Saveljev <konstantin.saveljev@gmail.com>";
      author = "Konstantin Saveljev <konstantin.saveljev@gmail.com>";
      homepage = "https://github.com/ksaveljev/yampa-2048";
      url = "";
      synopsis = "2048 game clone using Yampa/Gloss";
      description = "A simple game clone of a popular 2048 game using Yampa FRP\nlibrary and Gloss for graphics.\n\nUse the arrow keys to slide the rows or columns of the board and try to\nsurvive for as long as possible. When there is no more move possible you will\nbe presented with a game over message for 5 seconds and the game will be\nrestarted after that.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "yampa2048" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.random)
            (hsPkgs.gloss)
            (hsPkgs.Yampa)
          ];
        };
      };
    };
  }