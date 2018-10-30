{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      oldtime = false;
      terminfo = true;
      threaded = true;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hledger";
        version = "1.2";
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
        depends  = ((([
          (hsPkgs.base)
          (hsPkgs.base-compat)
          (hsPkgs.directory)
          (hsPkgs.file-embed)
          (hsPkgs.filepath)
          (hsPkgs.here)
          (hsPkgs.pretty-show)
          (hsPkgs.process)
          (hsPkgs.temporary)
          (hsPkgs.tabular)
          (hsPkgs.hledger-lib)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.cmdargs)
          (hsPkgs.csv)
          (hsPkgs.data-default)
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
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.6") (hsPkgs.ghc-prim)) ++ (if compiler.isGhc && compiler.version.ge "7.10"
          then [ (hsPkgs.shakespeare) ]
          else [
            (hsPkgs.shakespeare)
            (hsPkgs.shakespeare-text)
          ])) ++ (if flags.oldtime
          then [
            (hsPkgs.time)
            (hsPkgs.old-locale)
          ]
          else [
            (hsPkgs.time)
          ])) ++ pkgs.lib.optional (!system.isWindows && flags.terminfo) (hsPkgs.terminfo);
      };
      exes = {
        "hledger" = {
          depends  = ((([
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.directory)
            (hsPkgs.file-embed)
            (hsPkgs.filepath)
            (hsPkgs.here)
            (hsPkgs.pretty-show)
            (hsPkgs.process)
            (hsPkgs.temporary)
            (hsPkgs.tabular)
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
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.6") (hsPkgs.ghc-prim)) ++ (if compiler.isGhc && compiler.version.ge "7.10"
            then [ (hsPkgs.shakespeare) ]
            else [
              (hsPkgs.shakespeare)
              (hsPkgs.shakespeare-text)
            ])) ++ (if flags.oldtime
            then [
              (hsPkgs.time)
              (hsPkgs.old-locale)
            ]
            else [
              (hsPkgs.time)
            ])) ++ pkgs.lib.optional (!system.isWindows && flags.terminfo) (hsPkgs.terminfo);
        };
      };
      tests = {
        "test" = {
          depends  = ((([
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.directory)
            (hsPkgs.file-embed)
            (hsPkgs.filepath)
            (hsPkgs.here)
            (hsPkgs.pretty-show)
            (hsPkgs.process)
            (hsPkgs.temporary)
            (hsPkgs.tabular)
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
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.6") (hsPkgs.ghc-prim)) ++ (if compiler.isGhc && compiler.version.ge "7.10"
            then [ (hsPkgs.shakespeare) ]
            else [
              (hsPkgs.shakespeare)
              (hsPkgs.shakespeare-text)
            ])) ++ (if flags.oldtime
            then [
              (hsPkgs.time)
              (hsPkgs.old-locale)
            ]
            else [
              (hsPkgs.time)
            ])) ++ pkgs.lib.optional (!system.isWindows && flags.terminfo) (hsPkgs.terminfo);
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.directory)
            (hsPkgs.file-embed)
            (hsPkgs.filepath)
            (hsPkgs.here)
            (hsPkgs.pretty-show)
            (hsPkgs.process)
            (hsPkgs.temporary)
            (hsPkgs.tabular)
            (hsPkgs.hledger-lib)
            (hsPkgs.hledger)
            (hsPkgs.criterion)
            (hsPkgs.html)
            (hsPkgs.timeit)
          ] ++ (if flags.oldtime
            then [
              (hsPkgs.time)
              (hsPkgs.old-locale)
            ]
            else [ (hsPkgs.time) ]);
        };
      };
    };
  }