{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { threaded = true; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hledger";
        version = "0.22.1";
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
      "library" = {
        depends = [
          (hsPkgs.hledger-lib)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.cmdargs)
          (hsPkgs.data-pprint)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.haskeline)
          (hsPkgs.HUnit)
          (hsPkgs.mtl)
          (hsPkgs.old-locale)
          (hsPkgs.old-time)
          (hsPkgs.parsec)
          (hsPkgs.process)
          (hsPkgs.regexpr)
          (hsPkgs.safe)
          (hsPkgs.shakespeare-text)
          (hsPkgs.split)
          (hsPkgs.text)
          (hsPkgs.tabular)
          (hsPkgs.time)
          (hsPkgs.utf8-string)
        ];
      };
      exes = {
        "hledger" = {
          depends = [
            (hsPkgs.hledger-lib)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.cmdargs)
            (hsPkgs.data-pprint)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.haskeline)
            (hsPkgs.HUnit)
            (hsPkgs.mtl)
            (hsPkgs.old-locale)
            (hsPkgs.old-time)
            (hsPkgs.parsec)
            (hsPkgs.process)
            (hsPkgs.regexpr)
            (hsPkgs.safe)
            (hsPkgs.shakespeare-text)
            (hsPkgs.split)
            (hsPkgs.tabular)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.utf8-string)
          ];
        };
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.hledger-lib)
            (hsPkgs.hledger)
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
            (hsPkgs.csv)
            (hsPkgs.data-pprint)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.haskeline)
            (hsPkgs.HUnit)
            (hsPkgs.mtl)
            (hsPkgs.old-locale)
            (hsPkgs.old-time)
            (hsPkgs.parsec)
            (hsPkgs.pretty-show)
            (hsPkgs.process)
            (hsPkgs.regexpr)
            (hsPkgs.safe)
            (hsPkgs.shakespeare-text)
            (hsPkgs.split)
            (hsPkgs.tabular)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }