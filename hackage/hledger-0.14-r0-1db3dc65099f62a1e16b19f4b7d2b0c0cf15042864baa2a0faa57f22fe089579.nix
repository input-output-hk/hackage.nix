{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hledger";
        version = "0.14";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Simon Michael <simon@joyful.com>";
      author = "Simon Michael <simon@joyful.com>";
      homepage = "http://hledger.org";
      url = "";
      synopsis = "A robust command-line accounting tool with a simple human-editable data format, similar to ledger.";
      description = "hledger is a haskell port and friendly fork of John Wiegley's ledger accounting tool.\nThis package provides the main hledger command-line tool; see the other hledger-* packages for web and curses interfaces and chart generation.\nhledger aims to be a reliable, practical financial reporting tool for day-to-day use, and also a useful library for building financial apps in haskell.\nGiven a plain text file describing transactions, of money or any other commodity, hledger will print the chart of accounts, account balances, or transactions you're interested in.\nIt can also help you add transactions to the journal file, or convert CSV data from your bank.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.hledger-lib)
          (hsPkgs.HUnit)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.csv)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.old-locale)
          (hsPkgs.old-time)
          (hsPkgs.parsec)
          (hsPkgs.process)
          (hsPkgs.regexpr)
          (hsPkgs.safe)
          (hsPkgs.split)
          (hsPkgs.time)
          (hsPkgs.utf8-string)
        ];
      };
      exes = {
        "hledger" = {
          depends = [
            (hsPkgs.hledger-lib)
            (hsPkgs.HUnit)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.csv)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.old-locale)
            (hsPkgs.old-time)
            (hsPkgs.parsec)
            (hsPkgs.process)
            (hsPkgs.regexpr)
            (hsPkgs.safe)
            (hsPkgs.split)
            (hsPkgs.time)
            (hsPkgs.utf8-string)
            (hsPkgs.haskeline)
          ];
        };
      };
    };
  }