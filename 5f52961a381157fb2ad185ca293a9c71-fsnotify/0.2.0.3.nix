{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "fsnotify";
          version = "0.2.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Greg Weber <greg@gregweber.info>, Roman Cheplyaka <roma@ro-che.info>";
        author = "Mark Dittmer <mark.s.dittmer@gmail.com>";
        homepage = "https://github.com/haskell-fswatch/hfsnotify";
        url = "";
        synopsis = "Cross platform library for file change notification.";
        description = "Cross platform library for file creation, modification,\nand deletion notification. This library builds upon\nexisting libraries for platform-specific Windows, Mac,\nand Linux filesystem event notification.";
        buildType = "Simple";
      };
      components = {
        "fsnotify" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.text
            hsPkgs.time
            hsPkgs.async
            hsPkgs.unix-compat
          ] ++ (if system.isLinux
            then [ hsPkgs.hinotify ]
            else if system.isWindows
              then [
                hsPkgs.Win32-notify
                hsPkgs.system-filepath
                hsPkgs.system-fileio
              ]
              else pkgs.lib.optionals system.isOsx [
                hsPkgs.hfsevents
                hsPkgs.system-filepath
                hsPkgs.system-fileio
              ]);
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.unix-compat
              hsPkgs.fsnotify
              hsPkgs.async
              hsPkgs.temporary-rc
            ];
          };
        };
      };
    }