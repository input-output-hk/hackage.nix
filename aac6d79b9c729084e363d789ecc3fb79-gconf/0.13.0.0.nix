{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "gconf";
          version = "0.13.0.0";
        };
        license = "LGPL-2.1-only";
        copyright = "(c) 2001-2010 The Gtk2Hs Team";
        maintainer = "gtk2hs-users@lists.sourceforge.net";
        author = "Duncan Coutts";
        homepage = "http://projects.haskell.org/gtk2hs/";
        url = "";
        synopsis = "Binding to the GNOME configuration database system.";
        description = "GConf is a configuration database system for storing application\npreferences. It supports default or mandatory settings set by the\nadministrator, and changes to the database are instantly applied to all\nrunning applications. It is written for the GNOME desktop but doesn't\nrequire it.";
        buildType = "Custom";
      };
      components = {
        gconf = {
          depends  = [
            hsPkgs.base
            hsPkgs.glib
            hsPkgs.text
          ];
        };
      };
    }