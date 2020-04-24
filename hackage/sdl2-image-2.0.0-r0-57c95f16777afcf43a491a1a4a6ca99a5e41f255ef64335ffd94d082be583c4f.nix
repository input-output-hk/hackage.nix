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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."sdl2" or ((hsPkgs.pkgs-errors).buildDepError "sdl2"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        pkgconfig = [
          (pkgconfPkgs."sdl2" or ((hsPkgs.pkgs-errors).pkgConfDepError "sdl2"))
          (pkgconfPkgs."SDL2_image" or ((hsPkgs.pkgs-errors).pkgConfDepError "SDL2_image"))
          ];
        buildable = true;
        };
      exes = {
        "sdl2-image-example" = {
          depends = (pkgs.lib).optionals (flags.example) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."sdl2" or ((hsPkgs.pkgs-errors).buildDepError "sdl2"))
            (hsPkgs."sdl2-image" or ((hsPkgs.pkgs-errors).buildDepError "sdl2-image"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = if flags.example then true else false;
          };
        };
      };
    }