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
    flags = {
      usenativewindowslibraries = true;
      useglxgetprocaddress = true;
      usegles2 = true;
      osandroid = false;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "OpenGLRaw"; version = "3.3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2009-2017 Sven Panne";
      maintainer = "Sven Panne <svenpanne@gmail.com>, Jason Dagit <dagitj@gmail.com>";
      author = "Sven Panne";
      homepage = "http://www.haskell.org/haskellwiki/Opengl";
      url = "";
      synopsis = "A raw binding for the OpenGL graphics system";
      description = "OpenGLRaw is a raw Haskell binding for the OpenGL 4.6 graphics system and\nlots of OpenGL extensions. It is basically a 1:1 mapping of OpenGL's C API,\nintended as a basis for a nicer interface. OpenGLRaw offers access to all\nnecessary functions, tokens and types plus a general facility for loading\nextension entries. The module hierarchy closely mirrors the naming structure\nof the OpenGL extensions, making it easy to find the right module to import.\nAll API entries are loaded dynamically, so no special C header files are\nneeded for building this package. If an API entry is not found at runtime, a\nuserError is thrown.\n\nOpenGL is the industry's most widely used and supported 2D and 3D graphics\napplication programming interface (API), incorporating a broad set of\nrendering, texture mapping, special effects, and other powerful visualization\nfunctions. For more information about OpenGL and its various extensions,\nplease see <http://www.opengl.org/>\nand <http://www.opengl.org/registry/>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."fixed" or (buildDepError "fixed"))
          (hsPkgs."half" or (buildDepError "half"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        libs = if system.isWindows && flags.usenativewindowslibraries
          then [ (pkgs."opengl32" or (sysDepError "opengl32")) ]
          else (pkgs.lib).optionals (!system.isOsx) ((pkgs.lib).optionals (!system.isIos) (if flags.osandroid
            then if flags.usegles2
              then [ (pkgs."GLESv2" or (sysDepError "GLESv2")) ]
              else [ (pkgs."GLESv3" or (sysDepError "GLESv3")) ]
            else [ (pkgs."GL" or (sysDepError "GL")) ]));
        frameworks = (pkgs.lib).optionals (!(system.isWindows && flags.usenativewindowslibraries)) (if system.isOsx
          then [ (pkgs."OpenGL" or (sysDepError "OpenGL")) ]
          else (pkgs.lib).optional (system.isIos) (pkgs."OpenGLES" or (sysDepError "OpenGLES")));
        buildable = true;
        };
      };
    }