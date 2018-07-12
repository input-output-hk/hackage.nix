{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6.0";
        identifier = {
          name = "soegtk";
          version = "0.11.1";
        };
        license = "LGPL-2.1-only";
        copyright = "(c) 2001-2010 The Gtk2Hs Team";
        maintainer = "gtk2hs-users@sourceforge.net";
        author = "Duncan Coutts, Paul Liu";
        homepage = "http://www.haskell.org/gtk2hs/";
        url = "";
        synopsis = "GUI functions as used in the book \"The Haskell School of Expression\".";
        description = "An alternative implementation of the graphics library used in the book The Haskell\nSchool of Expression, by Paul Hudak, <http://www.haskell.org/soe/\nThis library builds on top of Gtk+.";
        buildType = "Custom";
      };
      components = {
        "soegtk" = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.haskell98
            hsPkgs.mtl
            hsPkgs.glib
            hsPkgs.cairo
            hsPkgs.gtk
            hsPkgs.old-time
          ];
          pkgconfig = [
            pkgconfPkgs."gtk+-2.0"
          ];
        };
      };
    }