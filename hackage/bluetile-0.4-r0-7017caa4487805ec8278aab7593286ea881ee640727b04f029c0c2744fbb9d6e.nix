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
      specVersion = "1.2";
      identifier = {
        name = "bluetile";
        version = "0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jan.vornberger@informatik.uni-oldenburg.de";
      author = "Jan Vornberger";
      homepage = "";
      url = "";
      synopsis = "A modern tiling window manager with a gentle learning curve";
      description = "Bluetile is a tiling window manager for X based on xmonad. Windows are arranged\nautomatically to tile the screen without gaps or overlap, maximising\nscreen use. Bluetile's focus lies on making the tiling paradigm easily\naccessible to users coming from traditional window managers by drawing\non known conventions and providing both mouse and keyboard access for all features.\nIt also tries to be usable 'out of the box', requiring minimal to\nno configuration in most cases.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "bluetile" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.process)
            (hsPkgs.xmonad-bluetilebranch)
            (hsPkgs.xmonad-contrib-bluetilebranch)
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