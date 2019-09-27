let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "GLHUI"; version = "1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Hugo Gomes";
      maintainer = "Hugo Gomes <mr.hugo.gomes@gmail.com>";
      author = "Hugo Gomes <mr.hugo.gomes@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Open OpenGL context windows in X11 with libX11";
      description = "\nHaskell functions to open and manage a OpenGL window with libX11.\n\nThis module is intended to be imported qualified, to avoid clashes with\nPrelude functions, e.g.\n\n> import qualified Graphics.UI.GLWindow as Window\n\nAs an example, here is a simple module that uses some of these functions\nto open a OpenGL 3.2 Context:\n\n> module Main where\n>\n> import Graphics.Rendering.OpenGL\n> import qualified Graphics.UI.GLWindow as Window\n>\n> myLoop = do clear [ColorBuffer]\n>             t <- Window.time\n>             clearColor \$= Color4 (sin (realToFrac t) * 0.5 + 0.5)\n>                                  (sin (realToFrac (t+1)) * 0.5 + 0.5)\n>                                  (sin (realToFrac (t+2)) * 0.5 +0.5)\n>                                  0\n>\n> main = do Window.init 3 2 -- initializes a OpenGL 3.2 context\n>           Window.loop myLoop -- stops when the ESC key is pressed\n>           Window.kill -- removes the window when the loop stops\n\nSpecial thanks to Tiago Farto (aka xernobyl) for coding the initial C version\nthat was used as a base for these functions";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (buildDepError "base")) ];
        libs = [
          (pkgs."X11" or (sysDepError "X11"))
          (pkgs."GL" or (sysDepError "GL"))
          (pkgs."rt" or (sysDepError "rt"))
          ];
        buildable = true;
        };
      };
    }