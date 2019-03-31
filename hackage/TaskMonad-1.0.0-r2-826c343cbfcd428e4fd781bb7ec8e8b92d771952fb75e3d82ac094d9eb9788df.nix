{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "TaskMonad"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "max@magorsch.de";
      author = "Max Magorsch";
      homepage = "https://taskmonad.magorsch.de";
      url = "";
      synopsis = "A collection of tools which can be used to access taskwarrior from xmonad.";
      description = "TaskMonad is a collection of tools which can be used to access taskwarrior from xmonad.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.X11)
          (hsPkgs.X11-xft)
          (hsPkgs.mtl)
          (hsPkgs.random)
          (hsPkgs.containers)
          (hsPkgs.unix)
          (hsPkgs.process)
          (hsPkgs.xmonad)
          (hsPkgs.xmonad-contrib)
          ];
        };
      };
    }