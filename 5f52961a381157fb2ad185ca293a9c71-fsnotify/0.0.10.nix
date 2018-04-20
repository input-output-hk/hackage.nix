{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "fsnotify";
          version = "0.0.10";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Mark Dittmer <mark.s.dittmer@gmail.com>, Greg Weber <greg@gregweber.info>";
        author = "Mark Dittmer <mark.s.dittmer@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Cross platform library for file change notification.";
        description = "Cross platform library for file creation, modification,\nand deletion notification. This library builds upon\nexisting libraries for platform-specific Window, Mac,\nand Linux filesystem event notification.";
        buildType = "Simple";
      };
      components = {
        fsnotify = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.system-fileio
            hsPkgs.system-filepath
            hsPkgs.text
            hsPkgs.time
          ] ++ (if system.isLinux
            then [ hsPkgs.hinotify ]
            else if system.isWindows
              then [ hsPkgs.Win32-notify ]
              else pkgs.lib.optional system.isOsx hsPkgs.hfsevents);
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.Cabal
              hsPkgs.containers
              hsPkgs.Glob
              hsPkgs.hspec
              hsPkgs.random
              hsPkgs.system-filepath
              hsPkgs.system-fileio
              hsPkgs.text
              hsPkgs.time
              hsPkgs.QuickCheck
              hsPkgs.uniqueid
            ] ++ (if system.isLinux
              then [ hsPkgs.hinotify ]
              else if system.isWindows
                then [
                  hsPkgs.Win32-notify
                  hsPkgs.ghc
                ]
                else pkgs.lib.optional system.isOsx hsPkgs.hfsevents);
          };
        };
      };
    }