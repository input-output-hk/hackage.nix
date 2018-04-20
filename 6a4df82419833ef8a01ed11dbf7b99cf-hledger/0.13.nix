{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hledger";
          version = "0.13";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Simon Michael <simon@joyful.com>";
        author = "Simon Michael <simon@joyful.com>";
        homepage = "http://hledger.org";
        url = "";
        synopsis = "A command-line double-entry accounting tool.";
        description = "hledger reads a plain text general journal or time log\ndescribing your transactions and displays precise\nbalance and register reports on the console.\nIt is a remix, in haskell, of John Wiegley's excellent c++\nledger.  hledger aims to be a practical, accessible tool\nfor end users and a useful library for finance-minded\nhaskell programmers.";
        buildType = "Custom";
      };
      components = {
        hledger = {
          depends  = [
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
            hsPkgs.split
            hsPkgs.time
            hsPkgs.utf8-string
          ];
        };
        exes = {
          hledger = {
            depends  = [
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
              hsPkgs.split
              hsPkgs.time
              hsPkgs.utf8-string
              hsPkgs.haskeline
            ];
          };
        };
      };
    }