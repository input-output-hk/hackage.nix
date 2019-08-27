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
    flags = { gtk = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "lgtk"; version = "0.8.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "divipp@gmail.com";
      author = "Péter Diviánszky";
      homepage = "http://www.haskell.org/haskellwiki/LGtk";
      url = "";
      synopsis = "Lens GUI Toolkit";
      description = "LGtk is a GUI Toolkit.\n\nMain goals of LGtk:\n\n-Provide a Haskell EDSL for declarative description of interactive graphical applications\n\n-Provide an API for custom widget design\n\n-Provide a playground for high-level declarative features like\nderived state-save and undo-redo operations and\ntype-driven GUI generation\n\nFor more information visit the following links:\n\n-<http://www.haskell.org/haskellwiki/LGtk haskell.org wiki page>\n\n-<http://lgtk.wordpress.com/ Wordpress blog>\n\n-<https://github.com/divipp/lgtk GitHub repository>\n\n-<http://hackage.haskell.org/package/lgtk Haddock documentation (this page)>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."groups" or (buildDepError "groups"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."operational" or (buildDepError "operational"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
          (hsPkgs."fsnotify" or (buildDepError "fsnotify"))
          (hsPkgs."colour" or (buildDepError "colour"))
          (hsPkgs."diagrams-lib" or (buildDepError "diagrams-lib"))
          (hsPkgs."diagrams-cairo" or (buildDepError "diagrams-cairo"))
          (hsPkgs."cairo" or (buildDepError "cairo"))
          (hsPkgs."OpenGLRaw" or (buildDepError "OpenGLRaw"))
          (hsPkgs."GLFW-b" or (buildDepError "GLFW-b"))
          (hsPkgs."lensref" or (buildDepError "lensref"))
          ] ++ (pkgs.lib).optional (flags.gtk) (hsPkgs."gtk" or (buildDepError "gtk"));
        };
      exes = {
        "lgtkdemo" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."random-shuffle" or (buildDepError "random-shuffle"))
            (hsPkgs."diagrams-lib" or (buildDepError "diagrams-lib"))
            (hsPkgs."lgtk" or (buildDepError "lgtk"))
            ];
          };
        };
      };
    }