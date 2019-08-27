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
    flags = { usenativewindowslibraries = true; useglxgetprocaddress = true; };
    package = {
      specVersion = "1.18";
      identifier = { name = "gl"; version = "0.7.2.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2014-2015 Edward A. Kmett,\nCopyright © 2014-2015 Gabríel Arthúr Pétursson,\nCopyright © 2013 Sven Panne";
      maintainer = "ekmett@gmail.com";
      author = "Edward A. Kmett, Gabríel Arthúr Pétursson, Sven Panne";
      homepage = "";
      url = "";
      synopsis = "Complete OpenGL raw bindings";
      description = "Complete OpenGL raw bindings";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."fixed" or (buildDepError "fixed"))
          (hsPkgs."half" or (buildDepError "half"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."hxt" or (buildDepError "hxt"))
          (hsPkgs."split" or (buildDepError "split"))
          ];
        libs = if system.isWindows && flags.usenativewindowslibraries
          then [ (pkgs."opengl32" or (sysDepError "opengl32")) ]
          else (pkgs.lib).optionals (!system.isOsx) ((pkgs.lib).optional (!system.isIos) (pkgs."GL" or (sysDepError "GL")));
        frameworks = (pkgs.lib).optionals (!(system.isWindows && flags.usenativewindowslibraries)) (if system.isOsx
          then [ (pkgs."OpenGL" or (sysDepError "OpenGL")) ]
          else (pkgs.lib).optional (system.isIos) (pkgs."OpenGLES" or (sysDepError "OpenGLES")));
        };
      };
    }