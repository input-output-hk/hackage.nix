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
      identifier = { name = "manatee-core"; version = "0.0.1"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2009 ~ 2010 Andy Stewart";
      maintainer = "Andy Stewart <lazycat.manatee@gmail.com>";
      author = "Andy Stewart";
      homepage = "";
      url = "";
      synopsis = "The core of Manatee.";
      description = "manatee-core is core package of Manatee (Haskell/Gtk+ Integrated Live Environment)\nTo provide basic communication protocol and toolkit.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."gtk" or (buildDepError "gtk"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."dbus-client" or (buildDepError "dbus-client"))
          (hsPkgs."dbus-core" or (buildDepError "dbus-core"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."cairo" or (buildDepError "cairo"))
          (hsPkgs."gio" or (buildDepError "gio"))
          (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."gtk-serialized-event" or (buildDepError "gtk-serialized-event"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."glib" or (buildDepError "glib"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."gtksourceview2" or (buildDepError "gtksourceview2"))
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."datetime" or (buildDepError "datetime"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."dataenc" or (buildDepError "dataenc"))
          (hsPkgs."derive" or (buildDepError "derive"))
          (hsPkgs."gconf" or (buildDepError "gconf"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."directory" or (buildDepError "directory"))
          ];
        };
      };
    }