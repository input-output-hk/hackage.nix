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
      specVersion = "1.8";
      identifier = { name = "goatee-gtk"; version = "0.2.0"; };
      license = "AGPL-3.0-only";
      copyright = "Copyright 2014 Bryan Gardiner";
      maintainer = "Bryan Gardiner <bog@khumba.net>";
      author = "Bryan Gardiner <bog@khumba.net>";
      homepage = "http://khumba.net/projects/goatee";
      url = "";
      synopsis = "A monadic take on a 2,500-year-old board game - GTK+ UI.";
      description = "Goatee is a Go library and game editor, written in Haskell.  It provides a\nGUI for recording, studying, and editing game records.  Underneath this is a\nportable library for manipulating SGF files to build UIs and tools.  Goatee\naims to be full-featured by supporting all of the SGF spec and allowing for\nfull and easy customization of the game records you create.\n\nThis package is the GTK+ UI.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."cairo" or (buildDepError "cairo"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."gtk" or (buildDepError "gtk"))
          (hsPkgs."goatee" or (buildDepError "goatee"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          ];
        };
      exes = {
        "goatee-gtk" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."gtk" or (buildDepError "gtk"))
            (hsPkgs."goatee-gtk" or (buildDepError "goatee-gtk"))
            ];
          };
        };
      tests = {
        "test-goatee-gtk" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."goatee-gtk" or (buildDepError "goatee-gtk"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            ];
          };
        };
      };
    }