{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      gtk3 = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.24";
      identifier = {
        name = "poppler";
        version = "0.14.1";
      };
      license = "GPL-2.0-only";
      copyright = "(c) 2001-2012, 2014-2016 The Gtk2Hs Team";
      maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
      author = "Andy Stewart";
      homepage = "http://projects.haskell.org/gtk2hs";
      url = "";
      synopsis = "Binding to the Poppler.";
      description = "Poppler is a fork of the xpdf PDF viewer, to provide PDF rendering functionality as a shared\nlibrary, to centralize the maintenance effort.\nAnd move to forward in a number of areas that don't fit within the goals of xpdf.";
      buildType = "Custom";
    };
    components = {
      "poppler" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.glib)
          (hsPkgs.cairo)
        ] ++ (if _flags.gtk3
          then [ (hsPkgs.gtk3) ]
          else [ (hsPkgs.gtk) ]);
        pkgconfig = if _flags.gtk3
          then [
            (pkgconfPkgs.poppler-glib)
            (pkgconfPkgs.cairo)
            (pkgconfPkgs.gdk-3.0)
            (pkgconfPkgs.pango)
          ]
          else [
            (pkgconfPkgs.poppler-glib)
            (pkgconfPkgs.gobject-2.0)
            (pkgconfPkgs.glib-2.0)
            (pkgconfPkgs.cairo)
            (pkgconfPkgs.gdk-2.0)
            (pkgconfPkgs.gdk-pixbuf-2.0)
            (pkgconfPkgs.pango)
          ];
      };
    };
  }