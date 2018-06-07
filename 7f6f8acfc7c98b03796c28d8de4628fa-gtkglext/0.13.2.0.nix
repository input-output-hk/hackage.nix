{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      have-quartz-gtk = false;
      use-deprecated = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.24";
        identifier = {
          name = "gtkglext";
          version = "0.13.2.0";
        };
        license = "LGPL-2.1-only";
        copyright = "(c) 2001-2010 The Gtk2Hs Team";
        maintainer = "gtk2hs-users@lists.sourceforge.net";
        author = "Duncan Coutts";
        homepage = "http://projects.haskell.org/gtk2hs/";
        url = "";
        synopsis = "Binding to the GTK+ OpenGL Extension";
        description = "GtkGLExt provides the GDK objects to support OpenGL rendering in GTK+,\nand GtkWidget API add-ons to make GTK+ widgets OpenGL-capable.";
        buildType = "Custom";
      };
      components = {
        gtkglext = {
          depends  = [
            hsPkgs.base
            hsPkgs.glib
            hsPkgs.pango
            hsPkgs.gtk
          ];
          pkgconfig = [
            pkgconfPkgs."gtkglext-1.0"
          ];
        };
      };
    }