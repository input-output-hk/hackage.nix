{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      terminfo = true;
      threaded = true;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hledger";
        version = "1.4";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Simon Michael <simon@joyful.com>";
      author = "Simon Michael <simon@joyful.com>";
      homepage = "http://hledger.org";
      url = "";
      synopsis = "Command-line interface for the hledger accounting tool";
      description = "This is hledger's command-line interface.\nIts basic function is to read a plain text file describing\nfinancial transactions and produce useful reports.\n\nhledger is a cross-platform program for tracking money, time, or\nany other commodity, using double-entry accounting and a simple,\neditable file format. It is inspired by and largely compatible\nwith ledger(1).  hledger provides command-line, curses and web\ninterfaces, and aims to be a reliable, practical tool for daily\nuse.";
      buildType = "Simple";
    };
    components = {
      "hledger" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base-compat)
          (hsPkgs.ansi-terminal)
          (hsPkgs.directory)
          (hsPkgs.file-embed)
          (hsPkgs.filepath)
          (hsPkgs.here)
          (hsPkgs.pretty-show)
          (hsPkgs.process)
          (hsPkgs.shakespeare)
          (hsPkgs.temporary)
          (hsPkgs.tabular)
          (hsPkgs.time)
          (hsPkgs.utility-ht)
          (hsPkgs.hledger-lib)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.cmdargs)
          (hsPkgs.csv)
          (hsPkgs.data-default)
          (hsPkgs.Diff)
          (hsPkgs.hashable)
          (hsPkgs.haskeline)
          (hsPkgs.HUnit)
          (hsPkgs.mtl)
          (hsPkgs.mtl-compat)
          (hsPkgs.old-time)
          (hsPkgs.megaparsec)
          (hsPkgs.regex-tdfa)
          (hsPkgs.safe)
          (hsPkgs.split)
          (hsPkgs.transformers)
          (hsPkgs.text)
          (hsPkgs.utf8-string)
          (hsPkgs.wizards)
        ] ++ pkgs.lib.optional (!system.isWindows && flags.terminfo) (hsPkgs.terminfo);
      };
      exes = {
        "hledger" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.ansi-terminal)
            (hsPkgs.directory)
            (hsPkgs.file-embed)
            (hsPkgs.filepath)
            (hsPkgs.here)
            (hsPkgs.pretty-show)
            (hsPkgs.process)
            (hsPkgs.shakespeare)
            (hsPkgs.temporary)
            (hsPkgs.tabular)
            (hsPkgs.time)
            (hsPkgs.utility-ht)
            (hsPkgs.hledger-lib)
            (hsPkgs.hledger)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.unordered-containers)
            (hsPkgs.cmdargs)
            (hsPkgs.csv)
            (hsPkgs.data-default)
            (hsPkgs.haskeline)
            (hsPkgs.HUnit)
            (hsPkgs.mtl)
            (hsPkgs.mtl-compat)
            (hsPkgs.old-time)
            (hsPkgs.parsec)
            (hsPkgs.regex-tdfa)
            (hsPkgs.safe)
            (hsPkgs.split)
            (hsPkgs.text)
            (hsPkgs.utf8-string)
            (hsPkgs.wizards)
          ] ++ pkgs.lib.optional (!system.isWindows && flags.terminfo) (hsPkgs.terminfo);
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.ansi-terminal)
            (hsPkgs.directory)
            (hsPkgs.file-embed)
            (hsPkgs.filepath)
            (hsPkgs.here)
            (hsPkgs.pretty-show)
            (hsPkgs.process)
            (hsPkgs.shakespeare)
            (hsPkgs.temporary)
            (hsPkgs.tabular)
            (hsPkgs.time)
            (hsPkgs.utility-ht)
            (hsPkgs.hledger-lib)
            (hsPkgs.hledger)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.unordered-containers)
            (hsPkgs.cmdargs)
            (hsPkgs.csv)
            (hsPkgs.data-default)
            (hsPkgs.haskeline)
            (hsPkgs.HUnit)
            (hsPkgs.mtl)
            (hsPkgs.mtl-compat)
            (hsPkgs.old-time)
            (hsPkgs.parsec)
            (hsPkgs.regex-tdfa)
            (hsPkgs.safe)
            (hsPkgs.split)
            (hsPkgs.text)
            (hsPkgs.utf8-string)
            (hsPkgs.wizards)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
          ] ++ pkgs.lib.optional (!system.isWindows && flags.terminfo) (hsPkgs.terminfo);
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.ansi-terminal)
            (hsPkgs.directory)
            (hsPkgs.file-embed)
            (hsPkgs.filepath)
            (hsPkgs.here)
            (hsPkgs.pretty-show)
            (hsPkgs.process)
            (hsPkgs.shakespeare)
            (hsPkgs.temporary)
            (hsPkgs.tabular)
            (hsPkgs.time)
            (hsPkgs.utility-ht)
            (hsPkgs.hledger-lib)
            (hsPkgs.hledger)
            (hsPkgs.criterion)
            (hsPkgs.html)
            (hsPkgs.timeit)
          ] ++ pkgs.lib.optional (!system.isWindows && flags.terminfo) (hsPkgs.terminfo);
        };
      };
    };
  }