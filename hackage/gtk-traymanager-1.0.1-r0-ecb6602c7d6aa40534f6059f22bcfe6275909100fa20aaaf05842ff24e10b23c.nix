{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "gtk-traymanager"; version = "1.0.1"; };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "tristan@nochair.net";
      author = "Tristan Ravitch";
      homepage = "http://github.com/travitch/gtk-traymanager";
      url = "";
      synopsis = "A wrapper around the eggtraymanager library for Linux system trays";
      description = "This package provides a wrapper around the prolific eggtraymanager code.\nNote that it is *NOT* itself a system tray widget, though it is a very\nconvenient utility for implementing one.  This package adopts the style\nof gtk2hs and is designed to work well with it.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."glib" or ((hsPkgs.pkgs-errors).buildDepError "glib"))
          (hsPkgs."gtk3" or ((hsPkgs.pkgs-errors).buildDepError "gtk3"))
          ];
        pkgconfig = [
          (pkgconfPkgs."gtk+-3.0" or ((hsPkgs.pkgs-errors).pkgConfDepError "gtk+-3.0"))
          (pkgconfPkgs."x11" or ((hsPkgs.pkgs-errors).pkgConfDepError "x11"))
          ];
        buildable = true;
        };
      };
    }