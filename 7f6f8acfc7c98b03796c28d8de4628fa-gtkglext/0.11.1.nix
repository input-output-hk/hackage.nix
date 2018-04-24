{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6.0";
        identifier = {
          name = "gtkglext";
          version = "0.11.1";
        };
        license = "LGPL-2.1-only";
        copyright = "(c) 2001-2010 The Gtk2Hs Team";
        maintainer = "gtk2hs-users@sourceforge.net";
        author = "Duncan Coutts";
        homepage = "http://www.haskell.org/gtk2hs/";
        url = "";
        synopsis = "Binding to the GTK+ OpenGL Extension";
        description = "GtkGLExt provides the GDK objects to support OpenGL rendering in GTK+,\nand GtkWidget API add-ons to make GTK+ widgets OpenGL-capable.";
        buildType = "Custom";
      };
      components = {
        gtkglext = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.haskell98
            hsPkgs.mtl
            hsPkgs.glib
            hsPkgs.pango
            hsPkgs.cairo
            hsPkgs.gtk
          ];
          pkgconfig = [
            pkgconfPkgs."gtkglext-1.0"
          ];
          build-tools = [
            hsPkgs.gtk2hsC2hs
            hsPkgs.gtk2hsHookGenerator
            hsPkgs.gtk2hsTypeGen
          ];
        };
      };
    }