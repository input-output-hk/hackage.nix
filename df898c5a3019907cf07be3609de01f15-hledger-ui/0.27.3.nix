{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      threaded = true;
      old-locale = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hledger-ui";
          version = "0.27.3";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Simon Michael <simon@joyful.com>";
        author = "Simon Michael <simon@joyful.com>";
        homepage = "http://hledger.org";
        url = "";
        synopsis = "Curses-style user interface for the hledger accounting tool";
        description = "This is hledger's curses-style interface.\nIt is simpler and more convenient for browsing data than the command-line interface,\nbut lighter and faster than hledger-web.\nhledger is a cross-platform program for tracking money, time, or\nany other commodity, using double-entry accounting and a simple,\neditable file format. It is inspired by and largely compatible\nwith ledger(1).  hledger provides command-line, curses and web\ninterfaces, and aims to be a reliable, practical tool for daily\nuse.";
        buildType = "Simple";
      };
      components = {
        exes = {
          hledger-ui = {
            depends  = ([
              hsPkgs.hledger
              hsPkgs.hledger-lib
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.brick
              hsPkgs.cmdargs
              hsPkgs.containers
              hsPkgs.data-default
              hsPkgs.filepath
              hsPkgs.HUnit
              hsPkgs.lens
              hsPkgs.safe
              hsPkgs.split
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.vty
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