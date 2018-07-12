{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "bluetile";
          version = "0.4.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jan.vornberger@informatik.uni-oldenburg.de";
        author = "Jan Vornberger";
        homepage = "http://www.bluetile.org/";
        url = "";
        synopsis = "A modern tiling window manager with a gentle learning curve";
        description = "Bluetile is a tiling window manager for X based on xmonad. Windows are\narranged to use the entire screen without overlapping. Bluetile's focus lies\non making the tiling paradigm easily accessible to users coming from\ntraditional window managers by drawing on known conventions and providing\nboth mouse and keyboard access for all features. It also tries to be usable\n'out of the box', requiring minimal to no configuration in most cases.";
        buildType = "Custom";
      };
      components = {
        exes = {
          "bluetile" = {
            depends  = [
              hsPkgs.base
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.process
              hsPkgs.filepath
              hsPkgs.random
              hsPkgs.utf8-string
              hsPkgs.xmonad
              hsPkgs.xmonad-contrib
            ];
          };
          "bluetiledock" = {
            depends  = [
              hsPkgs.base
              hsPkgs.base
              hsPkgs.unix
              hsPkgs.glade
              hsPkgs.gtk
              hsPkgs.X11
            ];
          };
          "bluetilemockwin" = {
            depends  = [
              hsPkgs.base
              hsPkgs.base
              hsPkgs.gtk
            ];
          };
          "bluetilegreet" = {
            depends  = [
              hsPkgs.base
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.glade
              hsPkgs.gtk
            ];
          };
        };
      };
    }