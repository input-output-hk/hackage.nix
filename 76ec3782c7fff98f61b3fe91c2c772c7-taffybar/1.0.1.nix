{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      network-uri = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "taffybar";
          version = "1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "tristan@nochair.net";
        author = "Tristan Ravitch";
        homepage = "http://github.com/travitch/taffybar";
        url = "";
        synopsis = "A desktop bar similar to xmobar, but with more GUI";
        description = "A somewhat fancier desktop bar than xmobar.  This bar is based on\ngtk2hs and provides several widgets (including a few graphical ones).\nIt also sports an optional snazzy system tray.";
        buildType = "Simple";
      };
      components = {
        taffybar = {
          depends  = [
            hsPkgs.base
            hsPkgs.alsa-mixer
            hsPkgs.ConfigFile
            hsPkgs.HStringTemplate
            hsPkgs.HTTP
            hsPkgs.X11
            hsPkgs.cairo
            hsPkgs.containers
            hsPkgs.dbus
            hsPkgs.directory
            hsPkgs.dyre
            hsPkgs.either
            hsPkgs.enclosed-exceptions
            hsPkgs.filepath
            hsPkgs.glib
            hsPkgs.gtk-traymanager
            hsPkgs.gtk3
            hsPkgs.mtl
            hsPkgs.multimap
            hsPkgs.old-locale
            hsPkgs.parsec
            hsPkgs.process
            hsPkgs.process
            hsPkgs.rate-limit
            hsPkgs.safe
            hsPkgs.split
            hsPkgs.stm
            hsPkgs.text
            hsPkgs.time
            hsPkgs.time-locale-compat
            hsPkgs.time-units
            hsPkgs.transformers
            hsPkgs.tuple
            hsPkgs.unix
            hsPkgs.utf8-string
            hsPkgs.xdg-basedir
            hsPkgs.xml
            hsPkgs.xml-helpers
            hsPkgs.xmonad
            hsPkgs.xmonad-contrib
          ] ++ [
            hsPkgs.network-uri
            hsPkgs.network
          ];
        };
        exes = {
          taffybar = {
            depends  = [
              hsPkgs.base
              hsPkgs.X11
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.dyre
              hsPkgs.filepath
              hsPkgs.glib
              hsPkgs.gtk3
              hsPkgs.mtl
              hsPkgs.safe
              hsPkgs.split
              hsPkgs.taffybar
              hsPkgs.utf8-string
              hsPkgs.xdg-basedir
            ];
          };
        };
      };
    }