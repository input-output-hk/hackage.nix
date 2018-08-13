{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "0";
      identifier = {
        name = "xmonad";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sjanssen@cse.unl.edu";
      author = "Spencer Janssen";
      homepage = "http://xmonad.org";
      url = "";
      synopsis = "A lightweight X11 window manager.";
      description = "Xmonad is a minimalist tiling window manager for X, written in\nHaskell. Windows are managed using automatic layout algorithms,\nwhich can be dynamically reconfigured. At any time windows are\narranged so as to maximise the use of screen real estate. All\nfeatures of the window manager are accessible purely from the\nkeyboard: a mouse is entirely optional.  Xmonad is configured in\nHaskell, and custom layout algorithms may be implemented by the user\nin config files. A principle of Xmonad is predictability: the user\nshould know in advance precisely the window arrangement that will\nresult from any action.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "xmonad" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.X11)
            (hsPkgs.X11-extras)
            (hsPkgs.mtl)
            (hsPkgs.unix)
          ];
        };
      };
    };
  }