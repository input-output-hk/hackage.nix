{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      vty = false;
      web = false;
      chart = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hledger";
          version = "0.10";
        };
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
        "hledger" = {
          depends  = (([
            hsPkgs.hledger-lib
            hsPkgs.HUnit
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.csv
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.mtl
            hsPkgs.old-locale
            hsPkgs.old-time
            hsPkgs.parsec
            hsPkgs.process
            hsPkgs.regexpr
            hsPkgs.safe
            hsPkgs.testpack
            hsPkgs.time
            hsPkgs.utf8-string
          ] ++ pkgs.lib.optional _flags.vty hsPkgs.vty) ++ pkgs.lib.optionals _flags.web [
            hsPkgs.hsp
            hsPkgs.hsx
            hsPkgs.xhtml
            hsPkgs.loli
            hsPkgs.io-storage
            hsPkgs.hack-contrib
            hsPkgs.hack
            hsPkgs.hack-handler-simpleserver
            hsPkgs.HTTP
            hsPkgs.applicative-extras
          ]) ++ pkgs.lib.optionals _flags.chart [
            hsPkgs.Chart
            hsPkgs.colour
          ];
        };
        exes = {
          "hledger" = {
            depends  = (([
              hsPkgs.hledger-lib
              hsPkgs.HUnit
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.csv
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.mtl
              hsPkgs.old-locale
              hsPkgs.old-time
              hsPkgs.parsec
              hsPkgs.process
              hsPkgs.regexpr
              hsPkgs.safe
              hsPkgs.testpack
              hsPkgs.time
              hsPkgs.utf8-string
            ] ++ pkgs.lib.optional _flags.vty hsPkgs.vty) ++ pkgs.lib.optionals _flags.web [
              hsPkgs.hsp
              hsPkgs.hsx
              hsPkgs.xhtml
              hsPkgs.loli
              hsPkgs.io-storage
              hsPkgs.hack-contrib
              hsPkgs.hack
              hsPkgs.hack-handler-simpleserver
              hsPkgs.HTTP
              hsPkgs.applicative-extras
            ]) ++ pkgs.lib.optionals _flags.chart [
              hsPkgs.Chart
              hsPkgs.colour
            ];
          };
        };
      };
    }