{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "gtk-traymanager";
        version = "0.1.0";
      };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "travitch@cs.wisc.edu";
      author = "Tristan Ravitch";
      homepage = "http://github.com/travitch/gtk-traymanager";
      url = "";
      synopsis = "A wrapper around the eggtraymanager library for Linux system trays";
      description = "This package provides a wrapper around the prolific eggtraymanager code.\nNote that it is *NOT* itself a system tray widget, though it is a very\nconvenient utility for implementing one.  This package adopts the style\nof gtk2hs and is designed to work well with it.";
      buildType = "Simple";
    };
    components = {
      "gtk-traymanager" = {
        depends  = [
          (hsPkgs.gtk)
          (hsPkgs.glib)
          (hsPkgs.base)
        ];
        pkgconfig = [
          (pkgconfPkgs.gtk+-2.0)
          (pkgconfPkgs.x11)
        ];
      };
    };
  }