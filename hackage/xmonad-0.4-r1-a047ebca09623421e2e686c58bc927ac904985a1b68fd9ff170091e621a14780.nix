{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.0";
      identifier = { name = "xmonad"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sjanssen@cse.unl.edu";
      author = "Spencer Janssen";
      homepage = "http://xmonad.org";
      url = "";
      synopsis = "A lightweight X11 window manager.";
      description = "xmonad is a tiling window manager for X. Windows are arranged\nautomatically to tile the screen without gaps or overlap, maximising\nscreen use. All features of the window manager are accessible from\nthe keyboard: a mouse is strictly optional. xmonad is written and\nextensible in Haskell. Custom layout algorithms, and other\nextensions, may be written by the user in config files. Layouts are\napplied dynamically, and different layouts may be used on each\nworkspace. Xinerama is fully supported, allowing windows to be tiled\non several screens.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "xmonad" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
            (hsPkgs."X11-extras" or (errorHandler.buildDepError "X11-extras"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ];
          buildable = true;
          };
        };
      };
    }