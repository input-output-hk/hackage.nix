{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      old-locale = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "arbtt";
          version = "0.9.0.11";
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
            depends  = (([
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.transformers
              hsPkgs.utf8-string
              hsPkgs.aeson
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.deepseq
            ] ++ (if _flags.old-locale
              then [
                hsPkgs.time
                hsPkgs.old-locale
              ]
              else [
                hsPkgs.time
              ])) ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix) ++ (if system.isWindows
              then [ hsPkgs.Win32 ]
              else pkgs.lib.optional (!system.isOsx) hsPkgs.X11);
            libs = if system.isWindows
              then [ pkgs.psapi ]
              else pkgs.lib.optional (!system.isOsx) pkgs.Xss;
            frameworks = pkgs.lib.optionals (!system.isWindows) (pkgs.lib.optionals system.isOsx [
              pkgs.Foundation
              pkgs.Carbon
              pkgs.IOKit
            ]);
          };
          "arbtt-stats" = {
            depends  = ([
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.containers
              hsPkgs.pcre-light
              hsPkgs.binary
              hsPkgs.deepseq
              hsPkgs.bytestring
              hsPkgs.utf8-string
              hsPkgs.strict
              hsPkgs.transformers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.aeson
              hsPkgs.array
              hsPkgs.terminal-progress-bar
              hsPkgs.bytestring-progress
            ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix) ++ (if _flags.old-locale
              then [
                hsPkgs.time
                hsPkgs.old-locale
              ]
              else [ hsPkgs.time ]);
          };
          "arbtt-dump" = {
            depends  = ([
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.containers
              hsPkgs.aeson
              hsPkgs.array
              hsPkgs.binary
              hsPkgs.deepseq
              hsPkgs.bytestring
              hsPkgs.utf8-string
              hsPkgs.strict
              hsPkgs.transformers
              hsPkgs.directory
              hsPkgs.filepath
            ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix) ++ (if _flags.old-locale
              then [
                hsPkgs.time
                hsPkgs.old-locale
              ]
              else [ hsPkgs.time ]);
          };
          "arbtt-import" = {
            depends  = ([
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.containers
              hsPkgs.binary
              hsPkgs.deepseq
              hsPkgs.bytestring
              hsPkgs.utf8-string
              hsPkgs.strict
              hsPkgs.transformers
              hsPkgs.directory
              hsPkgs.filepath
            ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix) ++ (if _flags.old-locale
              then [
                hsPkgs.time
                hsPkgs.old-locale
              ]
              else [ hsPkgs.time ]);
          };
          "arbtt-recover" = {
            depends  = ([
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.binary
              hsPkgs.deepseq
              hsPkgs.bytestring
              hsPkgs.utf8-string
              hsPkgs.directory
              hsPkgs.filepath
            ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix) ++ (if _flags.old-locale
              then [
                hsPkgs.time
                hsPkgs.old-locale
              ]
              else [ hsPkgs.time ]);
          };
        };
        tests = {
          "test" = {
            depends  = ([
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-golden
              hsPkgs.tasty-hunit
              hsPkgs.process-extras
              hsPkgs.deepseq
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.utf8-string
              hsPkgs.directory
              hsPkgs.parsec
              hsPkgs.containers
              hsPkgs.pcre-light
              hsPkgs.transformers
            ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix) ++ (if _flags.old-locale
              then [
                hsPkgs.time
                hsPkgs.old-locale
              ]
              else [ hsPkgs.time ]);
          };
        };
      };
    }