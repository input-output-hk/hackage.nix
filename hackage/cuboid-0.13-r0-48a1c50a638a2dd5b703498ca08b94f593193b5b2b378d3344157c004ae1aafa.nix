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
      specVersion = "1.6";
      identifier = { name = "cuboid"; version = "0.13"; };
      license = "MIT";
      copyright = "(C) 2010 Pedro Martins";
      maintainer = "Pedro Martins <pedromartins.pt@gmail.com>";
      author = "Pedro Martins <pedromartins.pt@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "3D Yampa/GLUT Puzzle Game ";
      description = "A simple 3D puzzle game made with Yampa and GLUT.  The objective\nof the game is to get the red sphere to the green sphere, by\nmoving the red sphere.\n\nUse the W and D keys to rotate the cube, and the arrow keys\n(up\\/down\\/left\\/right), to move the red ball (front\\/back\\/left\\/right\nrespectively).  The red sphere will then move until it hits an\nobstacle (green cube) and then stops.\n\nIn order to add levels check out Game.hs. If you come up with\na great level do send it to me. I plan to extract the levels\ninto a configuration file in the future.\n\nA slightly modified version of Yampa was included, which exports\nthe constructors that allow building new complex stateful operators";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cuboid" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
          ];
          buildable = true;
        };
      };
    };
  }