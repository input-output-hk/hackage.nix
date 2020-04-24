{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { threaded = true; curses = true; old-locale = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hledger"; version = "0.27.1"; };
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
          (hsPkgs."hledger-lib" or ((hsPkgs.pkgs-errors).buildDepError "hledger-lib"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base-compat" or ((hsPkgs.pkgs-errors).buildDepError "base-compat"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
          (hsPkgs."csv" or ((hsPkgs.pkgs-errors).buildDepError "csv"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
          (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."mtl-compat" or ((hsPkgs.pkgs-errors).buildDepError "mtl-compat"))
          (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."regex-tdfa" or ((hsPkgs.pkgs-errors).buildDepError "regex-tdfa"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."tabular" or ((hsPkgs.pkgs-errors).buildDepError "tabular"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."wizards" or ((hsPkgs.pkgs-errors).buildDepError "wizards"))
          ] ++ (if compiler.isGhc && (compiler.version).ge "7.10"
          then [
            (hsPkgs."shakespeare" or ((hsPkgs.pkgs-errors).buildDepError "shakespeare"))
            ]
          else [
            (hsPkgs."shakespeare" or ((hsPkgs.pkgs-errors).buildDepError "shakespeare"))
            (hsPkgs."shakespeare-text" or ((hsPkgs.pkgs-errors).buildDepError "shakespeare-text"))
            ])) ++ (if flags.old-locale
          then [
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            ]
          else [
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.4") (hsPkgs."pretty-show" or ((hsPkgs.pkgs-errors).buildDepError "pretty-show"))) ++ (pkgs.lib).optional (!system.isWindows && flags.curses) (hsPkgs."terminfo" or ((hsPkgs.pkgs-errors).buildDepError "terminfo"));
        buildable = true;
        };
      exes = {
        "hledger" = {
          depends = ((([
            (hsPkgs."hledger-lib" or ((hsPkgs.pkgs-errors).buildDepError "hledger-lib"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base-compat" or ((hsPkgs.pkgs-errors).buildDepError "base-compat"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."csv" or ((hsPkgs.pkgs-errors).buildDepError "csv"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."mtl-compat" or ((hsPkgs.pkgs-errors).buildDepError "mtl-compat"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."regex-tdfa" or ((hsPkgs.pkgs-errors).buildDepError "regex-tdfa"))
            (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."tabular" or ((hsPkgs.pkgs-errors).buildDepError "tabular"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            (hsPkgs."wizards" or ((hsPkgs.pkgs-errors).buildDepError "wizards"))
            (hsPkgs."hledger" or ((hsPkgs.pkgs-errors).buildDepError "hledger"))
            ] ++ (if compiler.isGhc && (compiler.version).ge "7.10"
            then [
              (hsPkgs."shakespeare" or ((hsPkgs.pkgs-errors).buildDepError "shakespeare"))
              ]
            else [
              (hsPkgs."shakespeare" or ((hsPkgs.pkgs-errors).buildDepError "shakespeare"))
              (hsPkgs."shakespeare-text" or ((hsPkgs.pkgs-errors).buildDepError "shakespeare-text"))
              ])) ++ (if flags.old-locale
            then [
              (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
              (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
              ]
            else [
              (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
              ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.4") (hsPkgs."pretty-show" or ((hsPkgs.pkgs-errors).buildDepError "pretty-show"))) ++ (pkgs.lib).optional (!system.isWindows && flags.curses) (hsPkgs."terminfo" or ((hsPkgs.pkgs-errors).buildDepError "terminfo"));
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = ((([
            (hsPkgs."hledger-lib" or ((hsPkgs.pkgs-errors).buildDepError "hledger-lib"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base-compat" or ((hsPkgs.pkgs-errors).buildDepError "base-compat"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."csv" or ((hsPkgs.pkgs-errors).buildDepError "csv"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."mtl-compat" or ((hsPkgs.pkgs-errors).buildDepError "mtl-compat"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."regex-tdfa" or ((hsPkgs.pkgs-errors).buildDepError "regex-tdfa"))
            (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."tabular" or ((hsPkgs.pkgs-errors).buildDepError "tabular"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            (hsPkgs."wizards" or ((hsPkgs.pkgs-errors).buildDepError "wizards"))
            (hsPkgs."hledger" or ((hsPkgs.pkgs-errors).buildDepError "hledger"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            ] ++ (if compiler.isGhc && (compiler.version).ge "7.10"
            then [
              (hsPkgs."shakespeare" or ((hsPkgs.pkgs-errors).buildDepError "shakespeare"))
              ]
            else [
              (hsPkgs."shakespeare" or ((hsPkgs.pkgs-errors).buildDepError "shakespeare"))
              (hsPkgs."shakespeare-text" or ((hsPkgs.pkgs-errors).buildDepError "shakespeare-text"))
              ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.4") (hsPkgs."pretty-show" or ((hsPkgs.pkgs-errors).buildDepError "pretty-show"))) ++ (if flags.old-locale
            then [
              (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
              (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
              ]
            else [
              (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
              ])) ++ (pkgs.lib).optional (!system.isWindows && flags.curses) (hsPkgs."terminfo" or ((hsPkgs.pkgs-errors).buildDepError "terminfo"));
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."hledger-lib" or ((hsPkgs.pkgs-errors).buildDepError "hledger-lib"))
            (hsPkgs."hledger" or ((hsPkgs.pkgs-errors).buildDepError "hledger"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base-compat" or ((hsPkgs.pkgs-errors).buildDepError "base-compat"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."html" or ((hsPkgs.pkgs-errors).buildDepError "html"))
            (hsPkgs."tabular" or ((hsPkgs.pkgs-errors).buildDepError "tabular"))
            (hsPkgs."timeit" or ((hsPkgs.pkgs-errors).buildDepError "timeit"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            ] ++ (if flags.old-locale
            then [
              (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
              (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
              ]
            else [
              (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
              ]);
          buildable = true;
          };
        };
      };
    }