{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      oldtime = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hledger-lib";
          version = "1.3.2";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "Simon Michael <simon@joyful.com>";
        author = "Simon Michael <simon@joyful.com>";
        homepage = "http://hledger.org";
        url = "";
        synopsis = "Core data types, parsers and functionality for the hledger accounting tools";
        description = "This is a reusable library containing hledger's core functionality.\n\nhledger is a cross-platform program for tracking money, time, or\nany other commodity, using double-entry accounting and a simple,\neditable file format. It is inspired by and largely compatible\nwith ledger(1).  hledger provides command-line, curses and web\ninterfaces, and aims to be a reliable, practical tool for daily\nuse.";
        buildType = "Simple";
      };
      components = {
        hledger-lib = {
          depends  = ([
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.ansi-terminal
            hsPkgs.array
            hsPkgs.blaze-markup
            hsPkgs.bytestring
            hsPkgs.cmdargs
            hsPkgs.containers
            hsPkgs.csv
            hsPkgs.data-default
            hsPkgs.Decimal
            hsPkgs.deepseq
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.hashtables
            hsPkgs.megaparsec
            hsPkgs.mtl
            hsPkgs.mtl-compat
            hsPkgs.old-time
            hsPkgs.parsec
            hsPkgs.pretty-show
            hsPkgs.regex-tdfa
            hsPkgs.safe
            hsPkgs.semigroups
            hsPkgs.split
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.uglymemo
            hsPkgs.utf8-string
            hsPkgs.HUnit
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim) ++ (if _flags.oldtime
            then [
              hsPkgs.time
              hsPkgs.old-locale
            ]
            else [ hsPkgs.time ]);
        };
        tests = {
          doctests = {
            depends  = ([
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.ansi-terminal
              hsPkgs.array
              hsPkgs.blaze-markup
              hsPkgs.bytestring
              hsPkgs.cmdargs
              hsPkgs.containers
              hsPkgs.csv
              hsPkgs.data-default
              hsPkgs.Decimal
              hsPkgs.deepseq
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.hashtables
              hsPkgs.megaparsec
              hsPkgs.mtl
              hsPkgs.mtl-compat
              hsPkgs.old-time
              hsPkgs.parsec
              hsPkgs.pretty-show
              hsPkgs.regex-tdfa
              hsPkgs.safe
              hsPkgs.semigroups
              hsPkgs.split
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.uglymemo
              hsPkgs.utf8-string
              hsPkgs.HUnit
              hsPkgs.doctest
              hsPkgs.Glob
            ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim) ++ (if _flags.oldtime
              then [
                hsPkgs.time
                hsPkgs.old-locale
              ]
              else [ hsPkgs.time ]);
          };
          hunittests = {
            depends  = ([
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.ansi-terminal
              hsPkgs.array
              hsPkgs.blaze-markup
              hsPkgs.bytestring
              hsPkgs.cmdargs
              hsPkgs.containers
              hsPkgs.csv
              hsPkgs.data-default
              hsPkgs.Decimal
              hsPkgs.deepseq
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.hashtables
              hsPkgs.megaparsec
              hsPkgs.mtl
              hsPkgs.mtl-compat
              hsPkgs.old-time
              hsPkgs.parsec
              hsPkgs.pretty-show
              hsPkgs.regex-tdfa
              hsPkgs.safe
              hsPkgs.semigroups
              hsPkgs.split
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.uglymemo
              hsPkgs.utf8-string
              hsPkgs.HUnit
              hsPkgs.hledger-lib
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim) ++ (if _flags.oldtime
              then [
                hsPkgs.time
                hsPkgs.old-locale
              ]
              else [ hsPkgs.time ]);
          };
        };
      };
    }