{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "manatee-imageviewer";
          version = "0.0.2";
        };
        license = "GPL-3.0-only";
        copyright = "(c) 2009 ~ 2010 Andy Stewart";
        maintainer = "Andy Stewart <lazycat.manatee@gmail.com>";
        author = "Andy Stewart";
        homepage = "";
        url = "";
        synopsis = "Image viewer extension for Manatee.";
        description = "manatee-imageviewer is image viewer extension for Manatee (Haskell/Gtk+ Integrated Live Environment)";
        buildType = "Custom";
      };
      components = {
        manatee-imageviewer = {
          depends  = [
            hsPkgs.base
            hsPkgs.manatee-core
            hsPkgs.dbus-client
            hsPkgs.stm
            hsPkgs.containers
            hsPkgs.gtk-serialized-event
            hsPkgs.gtk
            hsPkgs.glib
            hsPkgs.gio
            hsPkgs.gtkimageview
            hsPkgs.text
            hsPkgs.regex-tdfa
            hsPkgs.filepath
            hsPkgs.utf8-string
          ];
        };
        exes = {
          manatee-imageviewer = {};
        };
      };
    }