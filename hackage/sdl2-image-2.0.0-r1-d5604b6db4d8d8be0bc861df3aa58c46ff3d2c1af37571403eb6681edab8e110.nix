{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { example = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "sdl2-image"; version = "2.0.0"; };
      license = "MIT";
      copyright = "Copyright © 2014 Cai Lei, Copyright © 2015 Siniša Biđin";
      maintainer = "Siniša Biđin <sinisa@bidin.eu>";
      author = "Cai Lei <cailei@live.com>, Siniša Biđin <sinisa@bidin.eu>";
      homepage = "";
      url = "";
      synopsis = "Bindings to SDL2_image.";
      description = "Haskell bindings to SDL2_image.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.sdl2)
          (hsPkgs.text)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          ];
        pkgconfig = [ (pkgconfPkgs."sdl2") (pkgconfPkgs."SDL2_image") ];
        };
      exes = {
        "sdl2-image-example" = {
          depends = (pkgs.lib).optionals (flags.example) [
            (hsPkgs.base)
            (hsPkgs.sdl2)
            (hsPkgs.sdl2-image)
            (hsPkgs.text)
            ];
          };
        };
      };
    }