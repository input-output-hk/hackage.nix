{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "xmonad-wallpaper";
          version = "0.0.1.4";
        };
        license = "LGPL-3.0-only";
        copyright = "";
        maintainer = "haskell.ye.yan@gmail.com";
        author = "Ye Yan";
        homepage = "";
        url = "";
        synopsis = "xmonad wallpaper extension";
        description = "Designed for xmonad users relies on feh to setup wallpaper. It allows user to setup a random image as the wallpaper choosed from user specified image directories.";
        buildType = "Simple";
      };
      components = {
        "xmonad-wallpaper" = {
          depends  = [
            hsPkgs.base
            hsPkgs.unix
            hsPkgs.xmonad
            hsPkgs.mtl
            hsPkgs.random
            hsPkgs.magic
          ];
        };
      };
    }