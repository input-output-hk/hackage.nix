{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "gtksourceview2";
        version = "0.12.3.1";
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.glib)
          (hsPkgs.gtk)
        ];
        pkgconfig = [
          (pkgconfPkgs.gtksourceview-2.0)
        ];
      };
    };
  }