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
      identifier = { name = "hledger-diff"; version = "0.2.0.5"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Gabriel Ebner <gebner@gebner.org>";
      author = "Gabriel Ebner <gebner@gebner.org>";
      homepage = "https://github.com/gebner/hledger-diff";
      url = "";
      synopsis = "Compares the transactions in two ledger files.";
      description = "hledger-diff is a command-line utility to compare two journal files.  It\nlooks at the transactions of a single account and prints out the transactions\nwhich are in one journal file but not in the other.  This is useful for\nreconciling existing journals with bank statements.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hledger-diff" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hledger-lib" or (buildDepError "hledger-lib"))
            (hsPkgs."time" or (buildDepError "time"))
            ];
          };
        };
      };
    }