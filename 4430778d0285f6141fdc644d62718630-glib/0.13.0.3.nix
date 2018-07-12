{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      closure_signals = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "glib";
          version = "0.13.0.3";
        };
        license = "LGPL-2.1-only";
        copyright = "(c) 2001-2010 The Gtk2Hs Team";
        maintainer = "gtk2hs-users@lists.sourceforge.net";
        author = "Axel Simon, Duncan Coutts";
        homepage = "http://projects.haskell.org/gtk2hs/";
        url = "";
        synopsis = "Binding to the GLIB library for Gtk2Hs.";
        description = "GLib is a collection of C data structures and utility functions\nfor the GObject system, main loop implementation, for strings and\ncommon data structures dealing with Unicode. This package only binds\nas much functionality as required to support the packages that\nwrap libraries that are themselves based on GLib.";
        buildType = "Custom";
      };
      components = {
        "glib" = {
          depends  = [
            hsPkgs.base
            hsPkgs.utf8-string
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.containers
          ];
          pkgconfig = [
            pkgconfPkgs."glib-2.0"
            pkgconfPkgs."gobject-2.0"
          ];
        };
      };
    }