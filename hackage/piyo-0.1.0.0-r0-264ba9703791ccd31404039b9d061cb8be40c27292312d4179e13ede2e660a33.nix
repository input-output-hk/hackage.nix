{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "piyo"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2018 peus";
      maintainer = "opyapeus@gmail.com";
      author = "peus";
      homepage = "https://github.com/opyapeus/piyo#readme";
      url = "";
      synopsis = "Haskell game engine like fantasy console.";
      description = "Please see the README on GitHub at <https://github.com/opyapeus/piyo#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."extra" or ((hsPkgs.pkgs-errors).buildDepError "extra"))
          (hsPkgs."sdl2" or ((hsPkgs.pkgs-errors).buildDepError "sdl2"))
          (hsPkgs."sdl2-gfx" or ((hsPkgs.pkgs-errors).buildDepError "sdl2-gfx"))
          (hsPkgs."sdl2-image" or ((hsPkgs.pkgs-errors).buildDepError "sdl2-image"))
          (hsPkgs."sdl2-mixer" or ((hsPkgs.pkgs-errors).buildDepError "sdl2-mixer"))
          (hsPkgs."sdl2-ttf" or ((hsPkgs.pkgs-errors).buildDepError "sdl2-ttf"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "piyo-exe" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."extra" or ((hsPkgs.pkgs-errors).buildDepError "extra"))
            (hsPkgs."piyo" or ((hsPkgs.pkgs-errors).buildDepError "piyo"))
            (hsPkgs."sdl2" or ((hsPkgs.pkgs-errors).buildDepError "sdl2"))
            (hsPkgs."sdl2-gfx" or ((hsPkgs.pkgs-errors).buildDepError "sdl2-gfx"))
            (hsPkgs."sdl2-image" or ((hsPkgs.pkgs-errors).buildDepError "sdl2-image"))
            (hsPkgs."sdl2-mixer" or ((hsPkgs.pkgs-errors).buildDepError "sdl2-mixer"))
            (hsPkgs."sdl2-ttf" or ((hsPkgs.pkgs-errors).buildDepError "sdl2-ttf"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      tests = {
        "piyo-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."extra" or ((hsPkgs.pkgs-errors).buildDepError "extra"))
            (hsPkgs."piyo" or ((hsPkgs.pkgs-errors).buildDepError "piyo"))
            (hsPkgs."sdl2" or ((hsPkgs.pkgs-errors).buildDepError "sdl2"))
            (hsPkgs."sdl2-gfx" or ((hsPkgs.pkgs-errors).buildDepError "sdl2-gfx"))
            (hsPkgs."sdl2-image" or ((hsPkgs.pkgs-errors).buildDepError "sdl2-image"))
            (hsPkgs."sdl2-mixer" or ((hsPkgs.pkgs-errors).buildDepError "sdl2-mixer"))
            (hsPkgs."sdl2-ttf" or ((hsPkgs.pkgs-errors).buildDepError "sdl2-ttf"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }