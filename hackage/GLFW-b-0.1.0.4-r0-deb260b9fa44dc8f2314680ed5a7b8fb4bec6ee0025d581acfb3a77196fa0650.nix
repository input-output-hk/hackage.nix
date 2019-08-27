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
      identifier = { name = "GLFW-b"; version = "0.1.0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Brian Lewis <brian@lorf.org>";
      author = "Brian Lewis <brian@lorf.org>";
      homepage = "";
      url = "";
      synopsis = "GLFW bindings";
      description = "Bindings to GLFW, a free, open source, multi-platform library for\ncreating OpenGL contexts and managing input, including keyboard,\nmouse, joystick and time.\n\nGLFW-b works on Windows, Mac OS X, and many Unix-like operating\nsystems.\n\nPlease see README.md\n(<http://github.com/bsl/GLFW-b/blob/master/README.md>) for\ninformation about how these bindings differ from the ones in the\nGLFW package (<http://hackage.haskell.org/package/GLFW>).\n\nFor more information about the library on which these bindings\nare based, please see <http://glfw.sourceforge.net>.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (buildDepError "base")) ];
        libs = if system.isLinux || system.isFreebsd
          then [
            (pkgs."GL" or (sysDepError "GL"))
            (pkgs."GLU" or (sysDepError "GLU"))
            (pkgs."X11" or (sysDepError "X11"))
            (pkgs."Xrandr" or (sysDepError "Xrandr"))
            ]
          else if system.isOsx
            then [ (pkgs."glfw" or (sysDepError "glfw")) ]
            else (pkgs.lib).optional (system.isWindows) (pkgs."opengl32" or (sysDepError "opengl32"));
        };
      };
    }