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
    flags = { threaded = true; curses = true; old-locale = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hledger"; version = "0.27"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Simon Michael <simon@joyful.com>";
      author = "Simon Michael <simon@joyful.com>";
      homepage = "http://hledger.org";
      url = "";
      synopsis = "Command-line interface for the hledger accounting tool";
      description = "This is hledger’s command-line interface.\nIts basic function is to read a plain text file describing\nfinancial transactions and produce useful reports.\nhledger is a cross-platform program for tracking money, time, or\nany other commodity, using double-entry accounting and a simple,\neditable file format. It is inspired by and largely compatible\nwith ledger(1).  hledger provides command-line, curses and web\ninterfaces, and aims to be a reliable, practical tool for daily\nuse.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."hledger-lib" or (errorHandler.buildDepError "hledger-lib"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          (hsPkgs."csv" or (errorHandler.buildDepError "csv"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."mtl-compat" or (errorHandler.buildDepError "mtl-compat"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."tabular" or (errorHandler.buildDepError "tabular"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."wizards" or (errorHandler.buildDepError "wizards"))
          ] ++ (if compiler.isGhc && (compiler.version).ge "7.10"
          then [
            (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
            ]
          else [
            (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
            (hsPkgs."shakespeare-text" or (errorHandler.buildDepError "shakespeare-text"))
            ])) ++ (if flags.old-locale
          then [
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            ]
          else [
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.4") (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))) ++ (pkgs.lib).optional (!system.isWindows && flags.curses) (hsPkgs."terminfo" or (errorHandler.buildDepError "terminfo"));
        buildable = true;
        };
      exes = {
        "hledger" = {
          depends = ((([
            (hsPkgs."hledger-lib" or (errorHandler.buildDepError "hledger-lib"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."csv" or (errorHandler.buildDepError "csv"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."mtl-compat" or (errorHandler.buildDepError "mtl-compat"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."tabular" or (errorHandler.buildDepError "tabular"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."wizards" or (errorHandler.buildDepError "wizards"))
            (hsPkgs."hledger" or (errorHandler.buildDepError "hledger"))
            ] ++ (if compiler.isGhc && (compiler.version).ge "7.10"
            then [
              (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
              ]
            else [
              (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
              (hsPkgs."shakespeare-text" or (errorHandler.buildDepError "shakespeare-text"))
              ])) ++ (if flags.old-locale
            then [
              (hsPkgs."time" or (errorHandler.buildDepError "time"))
              (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
              ]
            else [
              (hsPkgs."time" or (errorHandler.buildDepError "time"))
              ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.4") (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))) ++ (pkgs.lib).optional (!system.isWindows && flags.curses) (hsPkgs."terminfo" or (errorHandler.buildDepError "terminfo"));
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = ((([
            (hsPkgs."hledger-lib" or (errorHandler.buildDepError "hledger-lib"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."csv" or (errorHandler.buildDepError "csv"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."mtl-compat" or (errorHandler.buildDepError "mtl-compat"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."tabular" or (errorHandler.buildDepError "tabular"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."wizards" or (errorHandler.buildDepError "wizards"))
            (hsPkgs."hledger" or (errorHandler.buildDepError "hledger"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            ] ++ (if compiler.isGhc && (compiler.version).ge "7.10"
            then [
              (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
              ]
            else [
              (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
              (hsPkgs."shakespeare-text" or (errorHandler.buildDepError "shakespeare-text"))
              ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.4") (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))) ++ (if flags.old-locale
            then [
              (hsPkgs."time" or (errorHandler.buildDepError "time"))
              (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
              ]
            else [
              (hsPkgs."time" or (errorHandler.buildDepError "time"))
              ])) ++ (pkgs.lib).optional (!system.isWindows && flags.curses) (hsPkgs."terminfo" or (errorHandler.buildDepError "terminfo"));
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."hledger-lib" or (errorHandler.buildDepError "hledger-lib"))
            (hsPkgs."hledger" or (errorHandler.buildDepError "hledger"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."html" or (errorHandler.buildDepError "html"))
            (hsPkgs."tabular" or (errorHandler.buildDepError "tabular"))
            (hsPkgs."timeit" or (errorHandler.buildDepError "timeit"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ] ++ (if flags.old-locale
            then [
              (hsPkgs."time" or (errorHandler.buildDepError "time"))
              (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
              ]
            else [ (hsPkgs."time" or (errorHandler.buildDepError "time")) ]);
          buildable = true;
          };
        };
      };
    }