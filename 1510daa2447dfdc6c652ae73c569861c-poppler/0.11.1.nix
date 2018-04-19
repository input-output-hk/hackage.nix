{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "poppler";
          version = "0.11.1";
        };
        license = "GPL-2.0-only";
        copyright = "(c) 2001-2010 The Gtk2Hs Team";
        maintainer = "gtk2hs-users@sourceforge.net";
        author = "Andy Stewart";
        homepage = "http://www.haskell.org/gtk2hs/";
        url = "";
        synopsis = "Binding to the Poppler.";
        description = "Poppler is a fork of the xpdf PDF viewer, to provide PDF rendering functionality as a shared\nlibrary, to centralize the maintenance effort.\nAnd move to forward in a number of areas that don't fit within the goals of xpdf.";
        buildType = "Custom";
      };
      components = {
        poppler = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.haskell98
            hsPkgs.mtl
            hsPkgs.bytestring
            hsPkgs.glib
            hsPkgs.cairo
            hsPkgs.gtk
          ];
        };
      };
    }