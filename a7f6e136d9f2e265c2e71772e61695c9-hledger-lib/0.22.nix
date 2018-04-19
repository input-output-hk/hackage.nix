{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hledger-lib";
          version = "0.22";
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
        hledger-lib = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cmdargs
            hsPkgs.containers
            hsPkgs.csv
            hsPkgs.data-pprint
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.mtl
            hsPkgs.old-locale
            hsPkgs.old-time
            hsPkgs.parsec
            hsPkgs.pretty-show
            hsPkgs.regex-compat-tdfa
            hsPkgs.regexpr
            hsPkgs.safe
            hsPkgs.split
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.utf8-string
            hsPkgs.HUnit
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.hledger-lib
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.containers
              hsPkgs.csv
              hsPkgs.data-pprint
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.HUnit
              hsPkgs.mtl
              hsPkgs.old-locale
              hsPkgs.old-time
              hsPkgs.parsec
              hsPkgs.pretty-show
              hsPkgs.regex-compat-tdfa
              hsPkgs.regexpr
              hsPkgs.safe
              hsPkgs.split
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.time
              hsPkgs.transformers
            ];
          };
        };
      };
    }