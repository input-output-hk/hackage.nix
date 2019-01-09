{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "snake-game"; version = "1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Akash Fulchand Jagdhane <akashjagdhane@gmail.com>";
      author = "Akash Fulchand Jagdhane <akashjagdhane@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Snake Game Using OpenGL";
      description = "This is a Snake Game where a BLIND YELLOW COMPUTER SNAKE is always hungry and runs all over the screen to swallow anything that comes in its ways, most of the times, YELLOW SQUARE BOXES (assuming its favorite food is inside each box). Whenever Snake eats 1 box, its length increases.\nOfcourse, since snake is blind, player have to help the snake in providing proper directions so that snake will eat maximum boxes.\nThe games finishes when Snake swallows itself(i.e. when player gives wrong directions to the snake).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.GLUT)
          (hsPkgs.OpenGL)
          (hsPkgs.random)
          ];
        };
      };
    }