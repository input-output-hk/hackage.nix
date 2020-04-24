{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "xmonad-screenshot"; version = "0.1.1.0"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."xmonad" or ((hsPkgs.pkgs-errors).buildDepError "xmonad"))
          (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
          ];
        buildable = true;
        };
      };
    }