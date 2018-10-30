{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      small_base = true;
      testing = false;
    };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "xmonad";
        version = "0.7";
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
      "library" = {
        depends  = [
          (hsPkgs.X11)
          (hsPkgs.mtl)
          (hsPkgs.unix)
        ] ++ (if flags.small_base
          then [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.process)
          ]
          else [ (hsPkgs.base) ]);
      };
      exes = {
        "xmonad" = {
          depends  = pkgs.lib.optional (flags.testing) (hsPkgs.QuickCheck) ++ pkgs.lib.optional (flags.testing && flags.small_base) (hsPkgs.random);
        };
      };
    };
  }