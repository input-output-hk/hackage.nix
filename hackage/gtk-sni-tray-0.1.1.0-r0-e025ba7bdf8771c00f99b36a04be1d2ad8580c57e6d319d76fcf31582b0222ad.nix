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
      specVersion = "1.10";
      identifier = { name = "gtk-sni-tray"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Ivan Malison";
      maintainer = "IvanMalison@gmail.com";
      author = "Ivan Malison";
      homepage = "https://github.com/IvanMalison/gtk-sni-tray#readme";
      url = "";
      synopsis = "A standalone StatusNotifierItem/AppIndicator tray";
      description = "Please see the README on Github at <https://github.com/IvanMalison/gtk-sni-tray#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."dbus" or (buildDepError "dbus"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."gi-dbusmenugtk3" or (buildDepError "gi-dbusmenugtk3"))
          (hsPkgs."gi-gdk" or (buildDepError "gi-gdk"))
          (hsPkgs."gi-gdkpixbuf" or (buildDepError "gi-gdkpixbuf"))
          (hsPkgs."gi-glib" or (buildDepError "gi-glib"))
          (hsPkgs."gi-gtk" or (buildDepError "gi-gtk"))
          (hsPkgs."gtk-strut" or (buildDepError "gtk-strut"))
          (hsPkgs."haskell-gi" or (buildDepError "haskell-gi"))
          (hsPkgs."haskell-gi-base" or (buildDepError "haskell-gi-base"))
          (hsPkgs."hslogger" or (buildDepError "hslogger"))
          (hsPkgs."status-notifier-item" or (buildDepError "status-notifier-item"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."unix" or (buildDepError "unix"))
          ];
        pkgconfig = [
          (pkgconfPkgs."gtk+-3.0" or (pkgConfDepError "gtk+-3.0"))
          ];
        };
      exes = {
        "gtk-sni-tray-standalone" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."dbus" or (buildDepError "dbus"))
            (hsPkgs."gi-gdk" or (buildDepError "gi-gdk"))
            (hsPkgs."gi-gtk" or (buildDepError "gi-gtk"))
            (hsPkgs."gtk-sni-tray" or (buildDepError "gtk-sni-tray"))
            (hsPkgs."gtk-strut" or (buildDepError "gtk-strut"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."status-notifier-item" or (buildDepError "status-notifier-item"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."unix" or (buildDepError "unix"))
            ];
          };
        };
      };
    }