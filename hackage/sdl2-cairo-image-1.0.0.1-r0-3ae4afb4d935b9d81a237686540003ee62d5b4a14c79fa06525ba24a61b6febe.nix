{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "sdl2-cairo-image"; version = "1.0.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Yun-Yan Chi <jaiyalas@gmail.com>";
      author = "Yun-Yan Chi <jaiyalas@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "An image loading and rendering library for sdl2 / sdl2-cairo";
      description = "An image loading and rendering library for sdl2 / sdl2-cairo";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."linear" or ((hsPkgs.pkgs-errors).buildDepError "linear"))
          (hsPkgs."JuicyPixels" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels"))
          (hsPkgs."sdl2" or ((hsPkgs.pkgs-errors).buildDepError "sdl2"))
          (hsPkgs."sdl2-cairo" or ((hsPkgs.pkgs-errors).buildDepError "sdl2-cairo"))
          (hsPkgs."cairo" or ((hsPkgs.pkgs-errors).buildDepError "cairo"))
          (hsPkgs."convertible" or ((hsPkgs.pkgs-errors).buildDepError "convertible"))
          ];
        buildable = true;
        };
      };
    }