{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "fsnotify";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Mark Dittmer <mark.s.dittmer@gmail.com>, Greg Weber <greg@gregweber.info>";
        author = "Mark Dittmer <mark.s.dittmer@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Cross platform library for file creation, modification,\nand deletion notification.";
        description = "Cross platform library for file creation, modification,\nand deletion notification. This library builds upon\nexisting libraries for platform-specific Window, Mac,\nand Linux filesystem event notification.";
        buildType = "Simple";
      };
      components = {
        fsnotify = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.directory
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
      };
    }