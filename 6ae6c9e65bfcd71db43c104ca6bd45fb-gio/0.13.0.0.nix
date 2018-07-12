{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "gio";
          version = "0.13.0.0";
        };
        license = "LGPL-2.1-only";
        copyright = "(c) 2001-2010 The Gtk2Hs Team";
        maintainer = "gtk2hs-users@lists.sourceforge.net";
        author = "Peter Gavin, Andy Stewart";
        homepage = "http://projects.haskell.org/gtk2hs/";
        url = "";
        synopsis = "Binding to the GIO.";
        description = "GIO is striving to provide a modern, easy-to-use VFS API that sits at the right level in the library stack.\nThe goal is to overcome the shortcomings of GnomeVFS and provide an API that is\nso good that developers prefer it over raw POSIX calls.\nAmong other things that means using GObject.\nIt also means not cloning the POSIX API, but providing higher-level, document-centric interfaces.";
        buildType = "Custom";
      };
      components = {
        "gio" = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.bytestring
            hsPkgs.glib
          ];
          pkgconfig = [
            pkgconfPkgs."gio-2.0"
          ];
        };
      };
    }