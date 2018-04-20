{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      threaded = true;
      curses = true;
      old-locale = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hledger";
          version = "0.27";
        };
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
        hledger = {
          depends  = ((([
            hsPkgs.hledger-lib
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.containers
            hsPkgs.unordered-containers
            hsPkgs.cmdargs
            hsPkgs.csv
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.haskeline
            hsPkgs.HUnit
            hsPkgs.mtl
            hsPkgs.mtl-compat
            hsPkgs.old-time
            hsPkgs.parsec
            hsPkgs.process
            hsPkgs.regex-tdfa
            hsPkgs.safe
            hsPkgs.split
            hsPkgs.text
            hsPkgs.tabular
            hsPkgs.utf8-string
            hsPkgs.wizards
          ] ++ (if compiler.isGhc
            then [ hsPkgs.shakespeare ]
            else [
              hsPkgs.shakespeare
              hsPkgs.shakespeare-text
            ])) ++ (if _flags.old-locale
            then [
              hsPkgs.time
              hsPkgs.old-locale
            ]
            else [
              hsPkgs.time
            ])) ++ pkgs.lib.optional compiler.isGhc hsPkgs.pretty-show) ++ pkgs.lib.optional (!system.isWindows && _flags.curses) hsPkgs.terminfo;
        };
        exes = {
          hledger = {
            depends  = ((([
              hsPkgs.hledger-lib
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.containers
              hsPkgs.unordered-containers
              hsPkgs.cmdargs
              hsPkgs.csv
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.haskeline
              hsPkgs.HUnit
              hsPkgs.mtl
              hsPkgs.mtl-compat
              hsPkgs.old-time
              hsPkgs.parsec
              hsPkgs.process
              hsPkgs.regex-tdfa
              hsPkgs.safe
              hsPkgs.split
              hsPkgs.text
              hsPkgs.tabular
              hsPkgs.utf8-string
              hsPkgs.wizards
              hsPkgs.hledger
            ] ++ (if compiler.isGhc
              then [ hsPkgs.shakespeare ]
              else [
                hsPkgs.shakespeare
                hsPkgs.shakespeare-text
              ])) ++ (if _flags.old-locale
              then [
                hsPkgs.time
                hsPkgs.old-locale
              ]
              else [
                hsPkgs.time
              ])) ++ pkgs.lib.optional compiler.isGhc hsPkgs.pretty-show) ++ pkgs.lib.optional (!system.isWindows && _flags.curses) hsPkgs.terminfo;
          };
        };
        tests = {
          test = {
            depends  = ((([
              hsPkgs.hledger-lib
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.containers
              hsPkgs.unordered-containers
              hsPkgs.cmdargs
              hsPkgs.csv
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.haskeline
              hsPkgs.HUnit
              hsPkgs.mtl
              hsPkgs.mtl-compat
              hsPkgs.old-time
              hsPkgs.parsec
              hsPkgs.process
              hsPkgs.regex-tdfa
              hsPkgs.safe
              hsPkgs.split
              hsPkgs.text
              hsPkgs.tabular
              hsPkgs.utf8-string
              hsPkgs.wizards
              hsPkgs.hledger
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ] ++ (if compiler.isGhc
              then [ hsPkgs.shakespeare ]
              else [
                hsPkgs.shakespeare
                hsPkgs.shakespeare-text
              ])) ++ pkgs.lib.optional compiler.isGhc hsPkgs.pretty-show) ++ (if _flags.old-locale
              then [
                hsPkgs.time
                hsPkgs.old-locale
              ]
              else [
                hsPkgs.time
              ])) ++ pkgs.lib.optional (!system.isWindows && _flags.curses) hsPkgs.terminfo;
          };
        };
        benchmarks = {
          bench = {
            depends  = [
              hsPkgs.hledger-lib
              hsPkgs.hledger
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.criterion
              hsPkgs.html
              hsPkgs.tabular
              hsPkgs.timeit
              hsPkgs.process
              hsPkgs.filepath
              hsPkgs.directory
            ] ++ (if _flags.old-locale
              then [
                hsPkgs.time
                hsPkgs.old-locale
              ]
              else [ hsPkgs.time ]);
          };
        };
      };
    }