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
    flags = { dynamic = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "GLFW"; version = "0.5.2.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Paul H. Liu <paul@thev.net>";
      author = "";
      homepage = "http://haskell.org/haskellwiki/GLFW";
      url = "";
      synopsis = "A Haskell binding for GLFW";
      description = "A Haskell binding for GLFW, a window system independent toolkit\nfor writing OpenGL programs. For more information about the C\nlibrary on which this binding is based, please see\n<http://www.glfw.org>. Note that this binding comes with an\nolder GLFW C version 2.7.9 due to incompatible API changes in\nGLFW since 3.0 (for example, the removal of texture functions).\nIf you want to use newer GLFW C versions, install Haskell package\nGLFW-b instead.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
          ];
        libs = if flags.dynamic
          then [ (pkgs."glfw" or (sysDepError "glfw")) ]
          else (pkgs.lib).optionals (!system.isOsx) (if system.isWindows
            then [ (pkgs."opengl32" or (sysDepError "opengl32")) ]
            else [
              (pkgs."X11" or (sysDepError "X11"))
              (pkgs."GL" or (sysDepError "GL"))
              ]);
        frameworks = (pkgs.lib).optionals (!flags.dynamic) ((pkgs.lib).optionals (system.isOsx) [
          (pkgs."Cocoa" or (sysDepError "Cocoa"))
          (pkgs."OpenGL" or (sysDepError "OpenGL"))
          (pkgs."IOKit" or (sysDepError "IOKit"))
          ]);
        buildable = true;
        };
      };
    }