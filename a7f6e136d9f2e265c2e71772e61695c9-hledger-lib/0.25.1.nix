{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      double = false;
      old-locale = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hledger-lib";
          version = "0.25.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Simon Michael <simon@joyful.com>";
        author = "Simon Michael <simon@joyful.com>";
        homepage = "http://hledger.org";
        url = "";
        synopsis = "Core data types, parsers and utilities for the hledger accounting tool.";
        description = "hledger is a library and set of user tools for working\nwith financial data (or anything that can be tracked in a\ndouble-entry accounting ledger.) It is a haskell port and\nfriendly fork of John Wiegley's Ledger. hledger provides\ncommand-line, curses and web interfaces, and aims to be a\nreliable, practical tool for daily use.";
        buildType = "Simple";
      };
      components = {
        "hledger-lib" = {
          depends  = ([
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.array
            hsPkgs.blaze-markup
            hsPkgs.bytestring
            hsPkgs.cmdargs
            hsPkgs.containers
            hsPkgs.csv
            hsPkgs.Decimal
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.mtl
            hsPkgs.mtl-compat
            hsPkgs.old-time
            hsPkgs.parsec
            hsPkgs.regex-tdfa
            hsPkgs.regexpr
            hsPkgs.safe
            hsPkgs.split
            hsPkgs.transformers
            hsPkgs.utf8-string
            hsPkgs.HUnit
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.4") hsPkgs.pretty-show) ++ (if _flags.old-locale
            then [
              hsPkgs.time
              hsPkgs.old-locale
            ]
            else [ hsPkgs.time ]);
        };
        tests = {
          "tests" = {
            depends  = ([
              hsPkgs.hledger-lib
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.array
              hsPkgs.blaze-markup
              hsPkgs.cmdargs
              hsPkgs.containers
              hsPkgs.csv
              hsPkgs.Decimal
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.HUnit
              hsPkgs.mtl
              hsPkgs.mtl-compat
              hsPkgs.old-time
              hsPkgs.parsec
              hsPkgs.regex-tdfa
              hsPkgs.regexpr
              hsPkgs.safe
              hsPkgs.split
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.transformers
            ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.4") hsPkgs.pretty-show) ++ (if _flags.old-locale
              then [
                hsPkgs.time
                hsPkgs.old-locale
              ]
              else [ hsPkgs.time ]);
          };
        };
      };
    }