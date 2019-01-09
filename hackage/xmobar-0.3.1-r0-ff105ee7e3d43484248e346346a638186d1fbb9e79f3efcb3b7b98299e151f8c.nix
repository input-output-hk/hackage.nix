{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "xmobar"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "andrea.rossato@unibz.it";
      author = "Andrea Rossato";
      homepage = "http://gorgias.mine.nu/repos/xmobar/";
      url = "";
      synopsis = "A Statusbar for the XMonad Window Manager";
      description = "Xmobar is a minimal status bar for the XMonad Window Manager.\n\nIt was inspired by the Ion3 status bar, and supports similar features.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "xmobar" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.X11)
            (hsPkgs.mtl)
            (hsPkgs.unix)
            (hsPkgs.parsec)
            ];
          };
        "xmb-cpu" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.X11)
            (hsPkgs.mtl)
            (hsPkgs.unix)
            (hsPkgs.parsec)
            ];
          };
        "xmb-mem" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.X11)
            (hsPkgs.mtl)
            (hsPkgs.unix)
            (hsPkgs.parsec)
            ];
          };
        "xmb-net" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.X11)
            (hsPkgs.mtl)
            (hsPkgs.unix)
            (hsPkgs.parsec)
            ];
          };
        "xmb-weather" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.X11)
            (hsPkgs.mtl)
            (hsPkgs.unix)
            (hsPkgs.parsec)
            ];
          };
        };
      };
    }