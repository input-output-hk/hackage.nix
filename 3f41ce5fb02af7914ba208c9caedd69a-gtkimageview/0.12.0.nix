{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6.0";
      identifier = {
        name = "gtkimageview";
        version = "0.12.0";
      };
      license = "LGPL-2.1-only";
      copyright = "(c) 2001-2010 The Gtk2Hs Team";
      maintainer = "gtk2hs-users@sourceforge.net";
      author = "Andy Stewart";
      homepage = "http://www.haskell.org/gtk2hs/";
      url = "";
      synopsis = "Binding to the GtkImageView library.";
      description = "GtkImageView is a simple image viewer widget for GTK+. Similar to the\nimage viewer panes in gThumb or Eye of Gnome. It makes writing image\nviewing and editing applications easy. Among its features are:\n* Mouse and keyboard zooming.\n* Scrolling and dragging.\n* Adjustable interpolation.\n* Fullscreen mode.\n* GIF animation support.\n* Ability to make selections.\n* Extensible using a tool system.";
      buildType = "Custom";
    };
    components = {
      "gtkimageview" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.haskell98)
          (hsPkgs.mtl)
          (hsPkgs.glib)
          (hsPkgs.gtk)
        ];
        pkgconfig = [
          (pkgconfPkgs.gtkimageview)
        ];
      };
    };
  }