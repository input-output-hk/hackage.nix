{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      terminfo = true;
      threaded = true;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hledger";
        version = "1.11.1";
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
      "library" = {
        depends  = [
          (hsPkgs.Decimal)
          (hsPkgs.Diff)
          (hsPkgs.ansi-terminal)
          (hsPkgs.base)
          (hsPkgs.base-compat-batteries)
          (hsPkgs.bytestring)
          (hsPkgs.cmdargs)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.easytest)
          (hsPkgs.file-embed)
          (hsPkgs.filepath)
          (hsPkgs.hashable)
          (hsPkgs.haskeline)
          (hsPkgs.here)
          (hsPkgs.hledger-lib)
          (hsPkgs.lucid)
          (hsPkgs.megaparsec)
          (hsPkgs.mtl)
          (hsPkgs.mtl-compat)
          (hsPkgs.old-time)
          (hsPkgs.parsec)
          (hsPkgs.pretty-show)
          (hsPkgs.process)
          (hsPkgs.regex-tdfa)
          (hsPkgs.safe)
          (hsPkgs.shakespeare)
          (hsPkgs.split)
          (hsPkgs.statistics)
          (hsPkgs.tabular)
          (hsPkgs.temporary)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.utf8-string)
          (hsPkgs.utility-ht)
          (hsPkgs.wizards)
        ] ++ pkgs.lib.optional (!system.isWindows && flags.terminfo) (hsPkgs.terminfo);
      };
      exes = {
        "hledger" = {
          depends  = [
            (hsPkgs.Decimal)
            (hsPkgs.ansi-terminal)
            (hsPkgs.base)
            (hsPkgs.base-compat-batteries)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.easytest)
            (hsPkgs.file-embed)
            (hsPkgs.filepath)
            (hsPkgs.haskeline)
            (hsPkgs.here)
            (hsPkgs.hledger)
            (hsPkgs.hledger-lib)
            (hsPkgs.megaparsec)
            (hsPkgs.mtl)
            (hsPkgs.mtl-compat)
            (hsPkgs.old-time)
            (hsPkgs.parsec)
            (hsPkgs.pretty-show)
            (hsPkgs.process)
            (hsPkgs.regex-tdfa)
            (hsPkgs.safe)
            (hsPkgs.shakespeare)
            (hsPkgs.split)
            (hsPkgs.statistics)
            (hsPkgs.tabular)
            (hsPkgs.temporary)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.utf8-string)
            (hsPkgs.utility-ht)
            (hsPkgs.wizards)
          ] ++ pkgs.lib.optional (!system.isWindows && flags.terminfo) (hsPkgs.terminfo);
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.Decimal)
            (hsPkgs.ansi-terminal)
            (hsPkgs.base)
            (hsPkgs.base-compat-batteries)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.easytest)
            (hsPkgs.file-embed)
            (hsPkgs.filepath)
            (hsPkgs.haskeline)
            (hsPkgs.here)
            (hsPkgs.hledger)
            (hsPkgs.hledger-lib)
            (hsPkgs.megaparsec)
            (hsPkgs.mtl)
            (hsPkgs.mtl-compat)
            (hsPkgs.old-time)
            (hsPkgs.parsec)
            (hsPkgs.pretty-show)
            (hsPkgs.process)
            (hsPkgs.regex-tdfa)
            (hsPkgs.safe)
            (hsPkgs.shakespeare)
            (hsPkgs.split)
            (hsPkgs.statistics)
            (hsPkgs.tabular)
            (hsPkgs.temporary)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.utf8-string)
            (hsPkgs.utility-ht)
            (hsPkgs.wizards)
          ] ++ pkgs.lib.optional (!system.isWindows && flags.terminfo) (hsPkgs.terminfo);
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.Decimal)
            (hsPkgs.ansi-terminal)
            (hsPkgs.base)
            (hsPkgs.base-compat-batteries)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.easytest)
            (hsPkgs.file-embed)
            (hsPkgs.filepath)
            (hsPkgs.haskeline)
            (hsPkgs.here)
            (hsPkgs.hledger)
            (hsPkgs.hledger-lib)
            (hsPkgs.html)
            (hsPkgs.megaparsec)
            (hsPkgs.mtl)
            (hsPkgs.mtl-compat)
            (hsPkgs.old-time)
            (hsPkgs.parsec)
            (hsPkgs.pretty-show)
            (hsPkgs.process)
            (hsPkgs.regex-tdfa)
            (hsPkgs.safe)
            (hsPkgs.shakespeare)
            (hsPkgs.split)
            (hsPkgs.statistics)
            (hsPkgs.tabular)
            (hsPkgs.temporary)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.timeit)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.utf8-string)
            (hsPkgs.utility-ht)
            (hsPkgs.wizards)
          ] ++ pkgs.lib.optional (!system.isWindows && flags.terminfo) (hsPkgs.terminfo);
        };
      };
    };
  }