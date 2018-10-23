{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { threaded = true; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hledger";
        version = "0.24";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Simon Michael <simon@joyful.com>";
      author = "Simon Michael <simon@joyful.com>";
      homepage = "http://hledger.org";
      url = "";
      synopsis = "The main command-line interface for the hledger accounting tool.";
      description = "hledger is a library and set of user tools for working\nwith financial data (or anything that can be tracked in a\ndouble-entry accounting ledger.) It is a haskell port and\nfriendly fork of John Wiegley's Ledger. hledger provides\ncommand-line, curses and web interfaces, and aims to be a\nreliable, practical tool for daily use.";
      buildType = "Simple";
    };
    components = {
      "hledger" = {
        depends  = [
          (hsPkgs.hledger-lib)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.cmdargs)
          (hsPkgs.csv)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.haskeline)
          (hsPkgs.HUnit)
          (hsPkgs.mtl)
          (hsPkgs.old-locale)
          (hsPkgs.old-time)
          (hsPkgs.parsec)
          (hsPkgs.process)
          (hsPkgs.regex-tdfa)
          (hsPkgs.regexpr)
          (hsPkgs.safe)
          (hsPkgs.shakespeare-text)
          (hsPkgs.shakespeare)
          (hsPkgs.split)
          (hsPkgs.text)
          (hsPkgs.tabular)
          (hsPkgs.time)
          (hsPkgs.utf8-string)
          (hsPkgs.wizards)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.4") (hsPkgs.pretty-show);
      };
      exes = {
        "hledger" = {
          depends  = [
            (hsPkgs.hledger-lib)
            (hsPkgs.hledger)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.cmdargs)
            (hsPkgs.csv)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.haskeline)
            (hsPkgs.HUnit)
            (hsPkgs.mtl)
            (hsPkgs.old-locale)
            (hsPkgs.old-time)
            (hsPkgs.parsec)
            (hsPkgs.process)
            (hsPkgs.regex-tdfa)
            (hsPkgs.regexpr)
            (hsPkgs.safe)
            (hsPkgs.shakespeare-text)
            (hsPkgs.shakespeare)
            (hsPkgs.split)
            (hsPkgs.tabular)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.utf8-string)
            (hsPkgs.wizards)
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.4") (hsPkgs.pretty-show);
        };
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.hledger-lib)
            (hsPkgs.hledger)
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
            (hsPkgs.csv)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.haskeline)
            (hsPkgs.HUnit)
            (hsPkgs.mtl)
            (hsPkgs.old-locale)
            (hsPkgs.old-time)
            (hsPkgs.parsec)
            (hsPkgs.process)
            (hsPkgs.regex-tdfa)
            (hsPkgs.regexpr)
            (hsPkgs.safe)
            (hsPkgs.shakespeare-text)
            (hsPkgs.shakespeare)
            (hsPkgs.split)
            (hsPkgs.tabular)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.wizards)
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.4") (hsPkgs.pretty-show);
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.hledger-lib)
            (hsPkgs.hledger)
            (hsPkgs.base)
            (hsPkgs.old-locale)
            (hsPkgs.time)
            (hsPkgs.html)
            (hsPkgs.tabular)
            (hsPkgs.process)
            (hsPkgs.filepath)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }