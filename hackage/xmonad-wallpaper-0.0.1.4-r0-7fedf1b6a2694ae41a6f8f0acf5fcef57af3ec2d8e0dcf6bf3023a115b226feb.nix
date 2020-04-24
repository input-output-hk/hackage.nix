{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "xmonad-wallpaper"; version = "0.0.1.4"; };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "haskell.ye.yan@gmail.com";
      author = "Ye Yan";
      homepage = "";
      url = "";
      synopsis = "xmonad wallpaper extension";
      description = "Designed for xmonad users relies on feh to setup wallpaper. It allows user to setup a random image as the wallpaper choosed from user specified image directories.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."xmonad" or ((hsPkgs.pkgs-errors).buildDepError "xmonad"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."magic" or ((hsPkgs.pkgs-errors).buildDepError "magic"))
          ];
        buildable = true;
        };
      };
    }