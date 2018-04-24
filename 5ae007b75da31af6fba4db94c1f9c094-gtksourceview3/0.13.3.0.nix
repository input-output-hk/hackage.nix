{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.24";
        identifier = {
          name = "gtksourceview3";
          version = "0.13.3.0";
        };
        license = "LGPL-2.1-only";
        copyright = "(c) 2001-2010 The Gtk2Hs Team";
        maintainer = "gtk2hs-users@lists.sourceforge.net";
        author = "Duncan Coutts, Peter Gavin, Axel Simon";
        homepage = "http://projects.haskell.org/gtk2hs/";
        url = "";
        synopsis = "Binding to the GtkSourceView library.";
        description = "GtkSourceView is a text widget that extends the standard GTK+ 2.x text widget\nGtkTextView. It improves GtkTextView by implementing syntax highlighting and\nother features typical of a source editor.";
        buildType = "Custom";
      };
      components = {
        gtksourceview3 = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.glib
            hsPkgs.gtk3
          ];
          pkgconfig = [
            pkgconfPkgs."gtksourceview-3.0"
          ];
          build-tools = [
            hsPkgs.gtk2hsC2hs
            hsPkgs.gtk2hsHookGenerator
            hsPkgs.gtk2hsTypeGen
          ];
        };
      };
    }