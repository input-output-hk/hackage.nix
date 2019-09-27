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
      identifier = { name = "manatee-ircclient"; version = "0.0.1"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2009 ~ 2010 Andy Stewart";
      maintainer = "Andy Stewart <lazycat.manatee@gmail.com>";
      author = "Andy Stewart";
      homepage = "";
      url = "";
      synopsis = "IRC client extension for Manatee.";
      description = "manatee-ircclient is IRC client extension for Manatee (Haskell/Gtk+ Integrated Live Environment)";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."manatee-core" or (buildDepError "manatee-core"))
          (hsPkgs."dbus-client" or (buildDepError "dbus-client"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."gtk-serialized-event" or (buildDepError "gtk-serialized-event"))
          (hsPkgs."gtk" or (buildDepError "gtk"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."dbus-core" or (buildDepError "dbus-core"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."gtksourceview2" or (buildDepError "gtksourceview2"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."groom" or (buildDepError "groom"))
          (hsPkgs."fastirc" or (buildDepError "fastirc"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."nano-md5" or (buildDepError "nano-md5"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."GoogleTranslate" or (buildDepError "GoogleTranslate"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          (hsPkgs."MorseCode" or (buildDepError "MorseCode"))
          ];
        buildable = true;
        };
      exes = {
        "manatee-irc-daemon" = { buildable = true; };
        "manatee-ircclient" = { buildable = true; };
        };
      };
    }