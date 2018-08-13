{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hledger-diff";
        version = "0.2.0.8";
      };
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
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hledger-lib)
            (hsPkgs.text)
            (hsPkgs.time)
          ];
        };
      };
    };
  }