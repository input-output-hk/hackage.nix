{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hledger-vty"; version = "0.15.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Simon Michael <simon@joyful.com>";
      author = "Simon Michael <simon@joyful.com>";
      homepage = "http://hledger.org";
      url = "";
      synopsis = "A curses-style console interface for the hledger accounting tool.";
      description = "hledger is a library and set of user tools for working\nwith financial data (or anything that can be tracked in a\ndouble-entry accounting ledger.) It is a haskell port and\nfriendly fork of John Wiegley's Ledger. hledger provides\ncommand-line, curses and web interfaces, and aims to be a\nreliable, practical tool for daily use.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hledger-vty" = {
          depends = [
            (hsPkgs."hledger" or (errorHandler.buildDepError "hledger"))
            (hsPkgs."hledger-lib" or (errorHandler.buildDepError "hledger-lib"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
          ];
          buildable = true;
        };
      };
    };
  }