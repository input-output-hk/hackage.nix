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
      specVersion = "1.10";
      identifier = {
        name = "xmonad-screenshot";
        version = "0.1.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Dmitry Malikov, malikov.d.y@gmail.com";
      author = "Matvey Aksenov";
      homepage = "https://github.com/supki/xmonad-screenshot";
      url = "";
      synopsis = "Workspaces screenshooting utility for XMonad.";
      description = "See README.markdown";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.xmonad)
          (hsPkgs.gtk)
        ];
      };
    };
  }