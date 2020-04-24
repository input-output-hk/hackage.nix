{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "FractalArt"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Tom.TSmeets@Gmail.com";
      author = "Tom";
      homepage = "https://github.com/TomSmeets/FractalArt";
      url = "";
      synopsis = "Generates colorful wallpapers";
      description = "This application generates colorful images as a wallpaper";
      buildType = "Simple";
      };
    components = {
      exes = {
        "FractalArt" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."mwc-random" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."JuicyPixels" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels"))
            ];
          libs = (pkgs.lib).optional (system.isLinux) (pkgs."X11" or ((hsPkgs.pkgs-errors).sysDepError "X11")) ++ (pkgs.lib).optional (system.isOsx) (pkgs."objc" or ((hsPkgs.pkgs-errors).sysDepError "objc"));
          buildable = true;
          };
        };
      };
    }