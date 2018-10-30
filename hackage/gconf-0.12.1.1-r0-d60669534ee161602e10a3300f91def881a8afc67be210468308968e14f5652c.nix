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
        name = "gconf";
        version = "0.12.1.1";
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.glib)
        ];
        pkgconfig = [
          (pkgconfPkgs.gconf-2.0)
        ];
      };
    };
  }