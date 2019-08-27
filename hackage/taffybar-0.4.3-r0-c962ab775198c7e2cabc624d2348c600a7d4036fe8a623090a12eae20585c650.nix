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
    flags = { network-uri = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "taffybar"; version = "0.4.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tristan@nochair.net";
      author = "Tristan Ravitch";
      homepage = "http://github.com/travitch/taffybar";
      url = "";
      synopsis = "A desktop bar similar to xmobar, but with more GUI";
      description = "A somewhat fancier desktop bar than xmobar.  This bar is based on\ngtk2hs and provides several widgets (including a few graphical ones).\nIt also sports an optional snazzy system tray.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."HTTP" or (buildDepError "HTTP"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."cairo" or (buildDepError "cairo"))
          (hsPkgs."dbus" or (buildDepError "dbus"))
          (hsPkgs."gtk" or (buildDepError "gtk"))
          (hsPkgs."dyre" or (buildDepError "dyre"))
          (hsPkgs."HStringTemplate" or (buildDepError "HStringTemplate"))
          (hsPkgs."gtk-traymanager" or (buildDepError "gtk-traymanager"))
          (hsPkgs."xmonad-contrib" or (buildDepError "xmonad-contrib"))
          (hsPkgs."xmonad" or (buildDepError "xmonad"))
          (hsPkgs."xdg-basedir" or (buildDepError "xdg-basedir"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."X11" or (buildDepError "X11"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."enclosed-exceptions" or (buildDepError "enclosed-exceptions"))
          ] ++ [
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."network" or (buildDepError "network"))
          ];
        pkgconfig = [
          (pkgconfPkgs."gtk+-2.0" or (pkgConfDepError "gtk+-2.0"))
          ];
        };
      exes = {
        "taffybar" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."dyre" or (buildDepError "dyre"))
            (hsPkgs."gtk" or (buildDepError "gtk"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."xdg-basedir" or (buildDepError "xdg-basedir"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          pkgconfig = [
            (pkgconfPkgs."gtk+-2.0" or (pkgConfDepError "gtk+-2.0"))
            ];
          };
        };
      };
    }