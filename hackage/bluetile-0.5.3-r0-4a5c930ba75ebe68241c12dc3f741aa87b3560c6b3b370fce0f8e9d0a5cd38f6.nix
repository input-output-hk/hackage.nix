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
      specVersion = "1.2";
      identifier = { name = "bluetile"; version = "0.5.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jan.vornberger@informatik.uni-oldenburg.de";
      author = "Jan Vornberger";
      homepage = "http://www.bluetile.org/";
      url = "";
      synopsis = "full-featured tiling for the GNOME desktop environment";
      description = "Bluetile is a tiling window manager for Linux, designed to integrate\nwith the GNOME desktop environment. It provides both a traditional,\nstacking layout mode as well as tiling layouts where windows are\narranged to use the entire screen without overlapping. Bluetile tries\nto make the tiling paradigm easily accessible to users coming from\ntraditional window managers by drawing on known conventions and\nproviding both mouse and keyboard access for all features.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "bluetile" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."ConfigFile" or (buildDepError "ConfigFile"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."X11-xft" or (buildDepError "X11-xft"))
            (hsPkgs."xmonad" or (buildDepError "xmonad"))
            (hsPkgs."xmonad-contrib" or (buildDepError "xmonad-contrib"))
            ];
          };
        "gnome-bluetile-session" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."unix" or (buildDepError "unix"))
            ];
          };
        "bluetiledock" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."glade" or (buildDepError "glade"))
            (hsPkgs."gtk" or (buildDepError "gtk"))
            (hsPkgs."X11" or (buildDepError "X11"))
            ];
          pkgconfig = [
            (pkgconfPkgs."gtk+-2.0" or (pkgConfDepError "gtk+-2.0"))
            ];
          };
        "bluetilemockwin" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."gtk" or (buildDepError "gtk"))
            ];
          };
        "bluetilegreet" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."glade" or (buildDepError "glade"))
            (hsPkgs."gtk" or (buildDepError "gtk"))
            ];
          };
        };
      };
    }