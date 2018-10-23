{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      testing = false;
      generatemanpage = false;
      profiling = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "xmonad";
        version = "0.13";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "xmonad@haskell.org";
      author = "Spencer Janssen";
      homepage = "http://xmonad.org";
      url = "";
      synopsis = "A tiling window manager";
      description = "xmonad is a tiling window manager for X. Windows are arranged\nautomatically to tile the screen without gaps or overlap, maximising\nscreen use. All features of the window manager are accessible from\nthe keyboard: a mouse is strictly optional. xmonad is written and\nextensible in Haskell. Custom layout algorithms, and other\nextensions, may be written by the user in config files. Layouts are\napplied dynamically, and different layouts may be used on each\nworkspace. Xinerama is fully supported, allowing windows to be tiled\non several screens.";
      buildType = "Simple";
    };
    components = {
      "xmonad" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.extensible-exceptions)
          (hsPkgs.filepath)
          (hsPkgs.setlocale)
          (hsPkgs.mtl)
          (hsPkgs.process)
          (hsPkgs.unix)
          (hsPkgs.utf8-string)
          (hsPkgs.X11)
        ];
      };
      exes = {
        "xmonad" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.unix)
            (hsPkgs.X11)
            (hsPkgs.xmonad)
          ];
        };
        "generatemanpage" = {
          depends  = pkgs.lib.optionals (flags.generatemanpage) [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.pandoc)
            (hsPkgs.pretty)
            (hsPkgs.regex-posix)
          ];
        };
      };
      tests = {
        "properties" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.extensible-exceptions)
            (hsPkgs.QuickCheck)
            (hsPkgs.X11)
            (hsPkgs.xmonad)
          ];
        };
      };
    };
  }