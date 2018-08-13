{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "arbtt";
        version = "0.8.1.1";
      };
      license = "LicenseRef-GPL";
      copyright = "Joachim Breitner 2009-2013";
      maintainer = "Joachim Breitner <mail@joachim-breitner.de>";
      author = "Joachim Breitner <mail@joachim-breitner.de>";
      homepage = "http://arbtt.nomeata.de/";
      url = "";
      synopsis = "Automatic Rule-Based Time Tracker";
      description = "arbtt is a background daemon that stores which windows are open, which one\nhas the focus and how long since your last action (and possbly more sources\nlater), and stores this. It is also a program that will, based on\nexpressive rules you specify, derive what you were doing, and what for.\n\nThe documentation, which includes the changelog, can also be found at\n<http://arbtt.nomeata.de/doc/users_guide/>.\n\nWARNING: The log file might contain very sensitive private data. Make sure\nyou understand the consequences of a full-time logger and be careful with this\ndata.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "arbtt-capture" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.transformers)
            (hsPkgs.time)
            (hsPkgs.utf8-string)
            (hsPkgs.aeson)
            (hsPkgs.array)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.deepseq)
            (hsPkgs.strict)
            (hsPkgs.old-locale)
          ] ++ (if system.isWindows
            then [ (hsPkgs.Win32) ]
            else [
              (hsPkgs.X11)
              (hsPkgs.unix)
            ]);
          libs = if system.isWindows
            then [ (pkgs."psapi") ]
            else [ (pkgs."Xss") ];
        };
        "arbtt-stats" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.containers)
            (hsPkgs.pcre-light)
            (hsPkgs.old-locale)
            (hsPkgs.binary)
            (hsPkgs.deepseq)
            (hsPkgs.bytestring)
            (hsPkgs.utf8-string)
            (hsPkgs.time)
            (hsPkgs.strict)
            (hsPkgs.transformers)
            (hsPkgs.unix)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.aeson)
            (hsPkgs.array)
            (hsPkgs.terminal-progress-bar)
            (hsPkgs.bytestring-progress)
          ];
        };
        "arbtt-dump" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.containers)
            (hsPkgs.aeson)
            (hsPkgs.array)
            (hsPkgs.binary)
            (hsPkgs.deepseq)
            (hsPkgs.bytestring)
            (hsPkgs.utf8-string)
            (hsPkgs.time)
            (hsPkgs.strict)
            (hsPkgs.transformers)
            (hsPkgs.unix)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.old-locale)
          ];
        };
        "arbtt-import" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.containers)
            (hsPkgs.binary)
            (hsPkgs.deepseq)
            (hsPkgs.bytestring)
            (hsPkgs.utf8-string)
            (hsPkgs.time)
            (hsPkgs.strict)
            (hsPkgs.transformers)
            (hsPkgs.unix)
            (hsPkgs.directory)
            (hsPkgs.filepath)
          ];
        };
        "arbtt-recover" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.containers)
            (hsPkgs.binary)
            (hsPkgs.deepseq)
            (hsPkgs.bytestring)
            (hsPkgs.utf8-string)
            (hsPkgs.time)
            (hsPkgs.strict)
            (hsPkgs.transformers)
            (hsPkgs.unix)
            (hsPkgs.directory)
            (hsPkgs.filepath)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.tasty-hunit)
            (hsPkgs.HUnit)
            (hsPkgs.process-extras)
            (hsPkgs.deepseq)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.utf8-string)
            (hsPkgs.time)
            (hsPkgs.unix)
            (hsPkgs.directory)
            (hsPkgs.parsec)
            (hsPkgs.containers)
            (hsPkgs.pcre-light)
            (hsPkgs.old-locale)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }