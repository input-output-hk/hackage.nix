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
      identifier = { name = "GLHUI"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Hugo Gomes";
      maintainer = "Hugo Gomes <mr.hugo.gomes@gmail.com>";
      author = "Hugo Gomes <mr.hugo.gomes@gmail.com>";
      homepage = "http://www.hackological.com/projects/GLHUI";
      url = "";
      synopsis = "Open OpenGL context windows in X11 with libX11";
      description = "\nHaskell functions to open and manage a OpenGL window with libX11.\n\nThis module is intended to be imported qualified, to avoid clashes with\nPrelude functions, e.g.\n\n> import qualified Graphics.UI.GLWindow as Window\n\nAs an example, here is a simple module that uses some of these functions\nto open a OpenGL 3.2 Context:\n\n> module Main where\n>\n> import Graphics.Rendering.OpenGL\n> import qualified Graphics.UI.GLWindow as Window\n>\n> myLoop = do clear [ColorBuffer]\n>             t <- Window.time\n>             clearColor $= Color4 (sin (realToFrac t) * 0.5 + 0.5)\n>                                  (sin (realToFrac (t+1)) * 0.5 + 0.5)\n>                                  (sin (realToFrac (t+2)) * 0.5 +0.5)\n>                                  0\n>\n> main = do Window.init 3 2 -- initializes a OpenGL 3.2 context\n>           Window.loop myLoop -- stops when the ESC key is pressed\n>           Window.kill -- removes the window when the loop stops\n\nSpecial thanks to Tiago Farto (aka xernobyl) for coding the C version of\nthese functions";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = [
          (pkgs."X11" or (errorHandler.sysDepError "X11"))
          (pkgs."GL" or (errorHandler.sysDepError "GL"))
          (pkgs."rt" or (errorHandler.sysDepError "rt"))
        ];
        buildable = true;
      };
    };
  }