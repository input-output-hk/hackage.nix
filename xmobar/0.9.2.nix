{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
      with_xft = true;
      with_utf8 = true;
      with_inotify = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "xmobar";
          version = "0.9.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "andrea.rossato@unitn.it";
        author = "Andrea Rossato";
        homepage = "http://code.haskell.org/~arossato/xmobar";
        url = "";
        synopsis = "A Minimalistic Text Based Status Bar";
        description = "Xmobar is a minimalistic text based status bar.\n\nInspired by the Ion3 status bar, it supports similar features,\nlike dynamic color management, output templates, and extensibility\nthrough plugins.";
        buildType = "Simple";
      };
      components = {
        exes = {
          xmobar = {
            depends  = ((([
              hsPkgs.X11
              hsPkgs.mtl
              hsPkgs.unix
              hsPkgs.parsec
              hsPkgs.filepath
              hsPkgs.stm
            ] ++ (if _flags.small_base
              then [
                hsPkgs.base
                hsPkgs.base
                hsPkgs.containers
                hsPkgs.process
                hsPkgs.old-time
                hsPkgs.old-locale
                hsPkgs.bytestring
                hsPkgs.directory
              ]
              else [
                hsPkgs.base
              ])) ++ optionals _flags.with_xft [
              hsPkgs.utf8-string
              hsPkgs.X11-xft
            ]) ++ pkgs.lib.optional _flags.with_utf8 hsPkgs.utf8-string) ++ pkgs.lib.optional _flags.with_inotify hsPkgs.hinotify;
          };
        };
      };
    }