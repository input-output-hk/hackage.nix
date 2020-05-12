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
    flags = { vty = false; happs = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "hledger"; version = "0.6.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Simon Michael <simon@joyful.com>";
      author = "Simon Michael <simon@joyful.com>";
      homepage = "http://hledger.org";
      url = "";
      synopsis = "A command-line (or curses or web-based) double-entry accounting tool.";
      description = "hledger reads a plain text ledger file or timelog\ndescribing your transactions and displays precise\nbalance and register reports via command-line, curses\nor web interface.  It is a remix, in haskell, of John\nWiegley's excellent c++ ledger.  hledger aims to be a\npractical, accessible tool for end users and a useful\nlibrary for finance-minded haskell programmers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          ];
        buildable = true;
        };
      exes = {
        "hledger" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."csv" or (errorHandler.buildDepError "csv"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."regexpr" or (errorHandler.buildDepError "regexpr"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."testpack" or (errorHandler.buildDepError "testpack"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ] ++ (pkgs.lib).optional (flags.vty) (hsPkgs."vty" or (errorHandler.buildDepError "vty"))) ++ (pkgs.lib).optionals (flags.happs) [
            (hsPkgs."happstack" or (errorHandler.buildDepError "happstack"))
            (hsPkgs."happstack-data" or (errorHandler.buildDepError "happstack-data"))
            (hsPkgs."happstack-server" or (errorHandler.buildDepError "happstack-server"))
            (hsPkgs."happstack-state" or (errorHandler.buildDepError "happstack-state"))
            (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            ];
          buildable = true;
          };
        };
      };
    }