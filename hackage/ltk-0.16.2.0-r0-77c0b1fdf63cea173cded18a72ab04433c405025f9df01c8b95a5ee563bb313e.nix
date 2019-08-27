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
    flags = { gdk-318 = true; gtk-318 = true; gtk-320 = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "ltk"; version = "0.16.2.0"; };
      license = "LicenseRef-GPL";
      copyright = "Juergen \"jutaro\" Nicklisch-Franken";
      maintainer = "maintainer@leksah.org";
      author = "Juergen \"jutaro\" Nicklisch-Franken";
      homepage = "http://www.leksah.org";
      url = "http://code.haskell.org/ltk";
      synopsis = "Leksah tool kit";
      description = "UI Framework used by leksah";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base-compat" or (buildDepError "base-compat"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."haskell-gi-base" or (buildDepError "haskell-gi-base"))
          (hsPkgs."gi-glib" or (buildDepError "gi-glib"))
          (hsPkgs."gi-gobject" or (buildDepError "gi-gobject"))
          (hsPkgs."gi-cairo" or (buildDepError "gi-cairo"))
          (hsPkgs."gi-gdk" or (buildDepError "gi-gdk"))
          (hsPkgs."gi-gtk" or (buildDepError "gi-gtk"))
          (hsPkgs."gi-gtk-hs" or (buildDepError "gi-gtk-hs"))
          (hsPkgs."haskell-gi-overloading" or (buildDepError "haskell-gi-overloading"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhcjs && true)) (hsPkgs."ghc" or (buildDepError "ghc"));
        pkgconfig = ([
          (pkgconfPkgs."gdk-3.0" or (pkgConfDepError "gdk-3.0"))
          ] ++ (if flags.gtk-318
          then [ (pkgconfPkgs."gtk+-3.0" or (pkgConfDepError "gtk+-3.0")) ]
          else [
            (pkgconfPkgs."gdk-3.0" or (pkgConfDepError "gdk-3.0"))
            ])) ++ (if flags.gtk-320
          then [ (pkgconfPkgs."gtk+-3.0" or (pkgConfDepError "gtk+-3.0")) ]
          else [ (pkgconfPkgs."gdk-3.0" or (pkgConfDepError "gdk-3.0")) ]);
        };
      };
    }