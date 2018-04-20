{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "manatee-mplayer";
          version = "0.0.1";
        };
        license = "GPL-3.0-only";
        copyright = "(c) 2009 ~ 2010 Andy Stewart";
        maintainer = "Andy Stewart <lazycat.manatee@gmail.com>";
        author = "Andy Stewart";
        homepage = "";
        url = "";
        synopsis = "Mplayer client extension for Manatee.";
        description = "manatee-mplayer is mplayer client extension for Manatee (Haskell/Gtk+ Integrated Live Environment)";
        buildType = "Custom";
      };
      components = {
        manatee-mplayer = {
          depends  = [
            hsPkgs.base
            hsPkgs.manatee-core
            hsPkgs.dbus-client
            hsPkgs.stm
            hsPkgs.containers
            hsPkgs.gtk-serialized-event
            hsPkgs.gtk
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.libtagc
            hsPkgs.regex-tdfa
            hsPkgs.filepath
            hsPkgs.utf8-string
            hsPkgs.time
            hsPkgs.dbus-core
            hsPkgs.gio
            hsPkgs.random
            hsPkgs.unix
            hsPkgs.process
          ];
        };
        exes = {
          manatee-mplayer-daemon = {};
          manatee-mplayer = {};
        };
      };
    }