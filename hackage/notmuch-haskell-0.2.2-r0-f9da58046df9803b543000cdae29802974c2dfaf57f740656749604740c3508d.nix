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
      identifier = { name = "notmuch-haskell"; version = "0.2.2"; };
      license = "LicenseRef-LGPL";
      copyright = "© 2010 Bart Massey";
      maintainer = "Bart Massey <bart@cs.pdx.edu>";
      author = "Bart Massey <bart@cs.pdx.edu>";
      homepage = "";
      url = "";
      synopsis = "Binding for notmuch MUA library";
      description = "This is a very preliminary higher-level Haskell binding\nfor the Notmuch (notmuchmail.org) email indexing library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          ];
        libs = [
          (pkgs."notmuch" or (sysDepError "notmuch"))
          (pkgs."gmime-2.4" or (sysDepError "gmime-2.4"))
          (pkgs."z" or (sysDepError "z"))
          (pkgs."nsl" or (sysDepError "nsl"))
          (pkgs."gobject-2.0" or (sysDepError "gobject-2.0"))
          (pkgs."glib-2.0" or (sysDepError "glib-2.0"))
          (pkgs."talloc" or (sysDepError "talloc"))
          (pkgs."xapian" or (sysDepError "xapian"))
          ];
        };
      exes = {
        "notmuch-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."parseargs" or (buildDepError "parseargs"))
            ];
          libs = [ (pkgs."notmuch" or (sysDepError "notmuch")) ];
          };
        };
      };
    }