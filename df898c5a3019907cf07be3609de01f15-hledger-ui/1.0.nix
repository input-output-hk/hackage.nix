{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      oldtime = false;
      threaded = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hledger-ui";
        version = "1.0";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Simon Michael <simon@joyful.com>";
      author = "Simon Michael <simon@joyful.com>";
      homepage = "http://hledger.org";
      url = "";
      synopsis = "Curses-style user interface for the hledger accounting tool";
      description = "This is hledger's curses-style interface.\nIt is simpler and more convenient for browsing data than the command-line interface,\nbut lighter and faster than hledger-web.\n\nhledger is a cross-platform program for tracking money, time, or\nany other commodity, using double-entry accounting and a simple,\neditable file format. It is inspired by and largely compatible\nwith ledger(1).  hledger provides command-line, curses and web\ninterfaces, and aims to be a reliable, practical tool for daily\nuse.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hledger-ui" = {
          depends  = ([
            (hsPkgs.hledger)
            (hsPkgs.hledger-lib)
            (hsPkgs.ansi-terminal)
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.filepath)
            (hsPkgs.HUnit)
            (hsPkgs.microlens)
            (hsPkgs.microlens-platform)
            (hsPkgs.megaparsec)
            (hsPkgs.pretty-show)
            (hsPkgs.process)
            (hsPkgs.safe)
            (hsPkgs.split)
            (hsPkgs.text)
            (hsPkgs.text-zipper)
            (hsPkgs.transformers)
            (hsPkgs.vector)
          ] ++ pkgs.lib.optionals (!system.isWindows) [
            (hsPkgs.brick)
            (hsPkgs.vty)
          ]) ++ (if _flags.oldtime
            then [
              (hsPkgs.time)
              (hsPkgs.old-locale)
            ]
            else [ (hsPkgs.time) ]);
        };
      };
    };
  }