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
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.linear)
          (hsPkgs.JuicyPixels)
          (hsPkgs.sdl2)
          (hsPkgs.sdl2-cairo)
          (hsPkgs.cairo)
          (hsPkgs.convertible)
          ];
        };
      };
    }