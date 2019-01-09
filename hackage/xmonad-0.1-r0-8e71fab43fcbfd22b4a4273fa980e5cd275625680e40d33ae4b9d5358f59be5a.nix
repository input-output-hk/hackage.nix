{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "xmonad"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sjanssen@cse.unl.edu";
      author = "Spencer Janssen";
      homepage = "";
      url = "";
      synopsis = "A lightweight X11 window manager.";
      description = "A lightweight X11 window manager.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "xmonad" = {
          depends = [
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