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
    flags = { vty = false; web = false; chart = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "hledger"; version = "0.10"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Simon Michael <simon@joyful.com>";
      author = "Simon Michael <simon@joyful.com>";
      homepage = "http://hledger.org";
      url = "";
      synopsis = "A command-line (or curses or web-based) double-entry accounting tool.";
      description = "hledger reads a plain text ledger file or timelog\ndescribing your transactions and displays precise\nbalance and register reports via command-line, curses\nor web interface.  It is a remix, in haskell, of John\nWiegley's excellent c++ ledger.  hledger aims to be a\npractical, accessible tool for end users and a useful\nlibrary for finance-minded haskell programmers.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."hledger-lib" or (errorHandler.buildDepError "hledger-lib"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."csv" or (errorHandler.buildDepError "csv"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."regexpr" or (errorHandler.buildDepError "regexpr"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."testpack" or (errorHandler.buildDepError "testpack"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ] ++ (pkgs.lib).optional (flags.vty) (hsPkgs."vty" or (errorHandler.buildDepError "vty"))) ++ (pkgs.lib).optionals (flags.web) [
          (hsPkgs."hsp" or (errorHandler.buildDepError "hsp"))
          (hsPkgs."hsx" or (errorHandler.buildDepError "hsx"))
          (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
          (hsPkgs."loli" or (errorHandler.buildDepError "loli"))
          (hsPkgs."io-storage" or (errorHandler.buildDepError "io-storage"))
          (hsPkgs."hack-contrib" or (errorHandler.buildDepError "hack-contrib"))
          (hsPkgs."hack" or (errorHandler.buildDepError "hack"))
          (hsPkgs."hack-handler-simpleserver" or (errorHandler.buildDepError "hack-handler-simpleserver"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."applicative-extras" or (errorHandler.buildDepError "applicative-extras"))
          ]) ++ (pkgs.lib).optionals (flags.chart) [
          (hsPkgs."Chart" or (errorHandler.buildDepError "Chart"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          ];
        buildable = true;
        };
      exes = {
        "hledger" = {
          depends = (([
            (hsPkgs."hledger-lib" or (errorHandler.buildDepError "hledger-lib"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."csv" or (errorHandler.buildDepError "csv"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."regexpr" or (errorHandler.buildDepError "regexpr"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."testpack" or (errorHandler.buildDepError "testpack"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            ] ++ (pkgs.lib).optional (flags.vty) (hsPkgs."vty" or (errorHandler.buildDepError "vty"))) ++ (pkgs.lib).optionals (flags.web) [
            (hsPkgs."hsp" or (errorHandler.buildDepError "hsp"))
            (hsPkgs."hsx" or (errorHandler.buildDepError "hsx"))
            (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
            (hsPkgs."loli" or (errorHandler.buildDepError "loli"))
            (hsPkgs."io-storage" or (errorHandler.buildDepError "io-storage"))
            (hsPkgs."hack-contrib" or (errorHandler.buildDepError "hack-contrib"))
            (hsPkgs."hack" or (errorHandler.buildDepError "hack"))
            (hsPkgs."hack-handler-simpleserver" or (errorHandler.buildDepError "hack-handler-simpleserver"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."applicative-extras" or (errorHandler.buildDepError "applicative-extras"))
            ]) ++ (pkgs.lib).optionals (flags.chart) [
            (hsPkgs."Chart" or (errorHandler.buildDepError "Chart"))
            (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
            ];
          buildable = true;
          };
        };
      };
    }