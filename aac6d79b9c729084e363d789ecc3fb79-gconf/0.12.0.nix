{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "gconf";
          version = "0.12.0";
        };
        license = "LGPL-2.1-only";
        copyright = "(c) 2001-2010 The Gtk2Hs Team";
        maintainer = "gtk2hs-users@sourceforge.net";
        author = "Duncan Coutts";
        homepage = "http://www.haskell.org/gtk2hs/";
        url = "";
        synopsis = "Binding to the GNOME configuration database system.";
        description = "GConf is a configuration database system for storing application\npreferences. It supports default or mandatory settings set by the\nadministrator, and changes to the database are instantly applied to all\nrunning applications. It is written for the GNOME desktop but doesn't\nrequire it.";
        buildType = "Custom";
      };
      components = {
        gconf = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.haskell98
            hsPkgs.mtl
            hsPkgs.glib
          ];
          pkgconfig = [
            pkgconfPkgs."gconf-2.0"
          ];
          build-tools = [
            hsPkgs.gtk2hsC2hs
            hsPkgs.gtk2hsHookGenerator
            hsPkgs.gtk2hsTypeGen
          ];
        };
      };
    }