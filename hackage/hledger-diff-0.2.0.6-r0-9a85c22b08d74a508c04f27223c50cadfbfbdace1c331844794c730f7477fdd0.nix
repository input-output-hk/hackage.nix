{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hledger-diff"; version = "0.2.0.6"; };
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
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hledger-lib" or ((hsPkgs.pkgs-errors).buildDepError "hledger-lib"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }