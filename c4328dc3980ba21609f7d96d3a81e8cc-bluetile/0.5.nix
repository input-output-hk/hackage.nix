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
      specVersion = "1.2";
      identifier = {
        name = "bluetile";
        version = "0.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jan.vornberger@informatik.uni-oldenburg.de";
      author = "Jan Vornberger";
      homepage = "http://www.bluetile.org/";
      url = "";
      synopsis = "full-featured tiling for the GNOME desktop environment";
      description = "Bluetile is a tiling window manager designed to integrate with the\nGNOME desktop environment. It provides both a traditional, stacking\nlayout mode as well as tiling layouts where windows are arranged to\nuse the entire screen without overlapping. Bluetile tries to make the\ntiling paradigm easily accessible to users coming from traditional\nwindow managers by drawing on known conventions and providing both\nmouse and keyboard access for all features.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "bluetile" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.process)
            (hsPkgs.filepath)
            (hsPkgs.random)
            (hsPkgs.utf8-string)
            (hsPkgs.unix)
            (hsPkgs.regex-compat)
            (hsPkgs.mtl)
            (hsPkgs.ConfigFile)
            (hsPkgs.directory)
            (hsPkgs.xmonad)
            (hsPkgs.xmonad-contrib)
          ];
        };
        "gnome-bluetile-session" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.unix)
          ];
        };
        "bluetiledock" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.unix)
            (hsPkgs.glade)
            (hsPkgs.gtk)
            (hsPkgs.X11)
          ];
        };
        "bluetilemockwin" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.gtk)
          ];
        };
        "bluetilegreet" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.glade)
            (hsPkgs.gtk)
          ];
        };
      };
    };
  }