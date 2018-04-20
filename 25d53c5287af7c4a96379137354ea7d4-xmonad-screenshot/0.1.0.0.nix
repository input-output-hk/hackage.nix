{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "xmonad-screenshot";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Dmitry Malikov, malikov.d.y@gmail.com";
        author = "Matvey Aksenov";
        homepage = "http://github.com/supki/xmonad-screenshot";
        url = "";
        synopsis = "Workspaces screenshooting utility for XMonad.";
        description = "";
        buildType = "Simple";
      };
      components = {
        xmonad-screenshot = {
          depends  = [
            hsPkgs.base
            hsPkgs.xmonad
            hsPkgs.gtk
          ];
        };
      };
    }