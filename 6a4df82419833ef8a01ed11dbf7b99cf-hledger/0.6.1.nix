{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      vty = false;
      happs = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hledger";
          version = "0.6.1";
        };
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
        "hledger" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.haskell98
            hsPkgs.parsec
            hsPkgs.time
            hsPkgs.utf8-string
            hsPkgs.HUnit
          ];
        };
        exes = {
          "hledger" = {
            depends  = ([
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.csv
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.haskell98
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.process
              hsPkgs.regexpr
              hsPkgs.split
              hsPkgs.testpack
              hsPkgs.time
              hsPkgs.utf8-string
              hsPkgs.HUnit
            ] ++ pkgs.lib.optional _flags.vty hsPkgs.vty) ++ pkgs.lib.optionals _flags.happs [
              hsPkgs.happstack
              hsPkgs.happstack-data
              hsPkgs.happstack-server
              hsPkgs.happstack-state
              hsPkgs.xhtml
              hsPkgs.HTTP
            ];
          };
        };
      };
    }