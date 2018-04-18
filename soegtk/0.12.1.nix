{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "soegtk";
          version = "0.12.1";
        };
        license = "LGPL-2.1-only";
        copyright = "(c) 2001-2010 The Gtk2Hs Team";
        maintainer = "gtk2hs-users@lists.sourceforge.net";
        author = "Duncan Coutts, Paul Liu";
        homepage = "http://projects.haskell.org/gtk2hs/";
        url = "";
        synopsis = "GUI functions as used in the book \"The Haskell School of Expression\".";
        description = "An alternative implementation of the graphics library used in the book The Haskell\nSchool of Expression, by Paul Hudak, <http://www.haskell.org/soe/\nThis library builds on top of Gtk+.";
        buildType = "Simple";
      };
      components = {
        soegtk = {
          depends  = [
            hsPkgs.base
            hsPkgs.cairo
            hsPkgs.gtk
            hsPkgs.stm
            hsPkgs.old-time
          ];
        };
      };
    }