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
      specVersion = "1.4";
      identifier = {
        name = "cuboid";
        version = "0.1";
      };
      license = "MIT";
      copyright = "(C) 2010 Pedro Martins";
      maintainer = "Pedro Martins <pedromartins.pt@gmail.com>";
      author = "Pedro Martins <pedromartins.pt@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "3D Yampa/GLUT Puzzle Game";
      description = "A simple 3D puzzle game made with Yampa and GLUT.  The objective\nof the game is to get the red sphere to the green sphere, by\nmoving the red sphere.\n\nUse the W and D keys to rotate the cube, and the arrow keys\n(up\\/down\\/left\\/right), to move the red ball (front\\/back\\/left\\/right\nrespectively).  The red sphere will then move until it hits an\nobstacle (green cube) and then stops.\n\nIn order to add levels check out Game.hs. If you come up with\na great level do send it to me. I plan to extract the levels\ninto a configuration file in the future.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cuboid" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Yampa)
            (hsPkgs.GLUT)
          ];
        };
      };
    };
  }