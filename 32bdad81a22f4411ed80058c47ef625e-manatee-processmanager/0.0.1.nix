{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "manatee-processmanager";
          version = "0.0.1";
        };
        license = "GPL-3.0-only";
        copyright = "(c) 2009 ~ 2010 Andy Stewart";
        maintainer = "Andy Stewart <lazycat.manatee@gmail.com>";
        author = "Andy Stewart";
        homepage = "";
        url = "";
        synopsis = "Process manager extension for Manatee.";
        description = "manatee-processmanager is process manager extension for Manatee (Haskell/Gtk+ Integrated Live Environment)";
        buildType = "Custom";
      };
      components = {
        manatee-processmanager = {
          depends  = [
            hsPkgs.base
            hsPkgs.manatee-core
            hsPkgs.dbus-client
            hsPkgs.stm
            hsPkgs.containers
            hsPkgs.gtk-serialized-event
            hsPkgs.gtk
            hsPkgs.text
            hsPkgs.proc
          ];
        };
        exes = {
          manatee-processmanager = {};
        };
      };
    }