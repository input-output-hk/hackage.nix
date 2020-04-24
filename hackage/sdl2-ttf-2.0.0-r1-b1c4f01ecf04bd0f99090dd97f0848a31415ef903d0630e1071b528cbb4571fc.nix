{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { example = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "sdl2-ttf"; version = "2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2013-2017 Ömer Sinan Ağacan, Siniša Biđin, Rongcui Dong";
      maintainer = "Mikolaj Konarski <mikolaj.konarski@funktory.com>";
      author = "Rongcui Dong (rongcuid@outlook.com),\nSiniša Biđin <sinisa@bidin.eu>,\nÖmer Sinan Ağacan (omeragacan@gmail.com),\nSean Chalmers (sclhiannan@gmail.com)";
      homepage = "";
      url = "";
      synopsis = "Bindings to SDL2_ttf.";
      description = "Haskell bindings to SDL2_ttf C++ library <http://www.libsdl.org/projects/SDL_ttf/>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."sdl2" or ((hsPkgs.pkgs-errors).buildDepError "sdl2"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        pkgconfig = [
          (pkgconfPkgs."sdl2" or ((hsPkgs.pkgs-errors).pkgConfDepError "sdl2"))
          (pkgconfPkgs."SDL2_ttf" or ((hsPkgs.pkgs-errors).pkgConfDepError "SDL2_ttf"))
          ];
        buildable = true;
        };
      exes = {
        "sdl2-ttf-example" = {
          depends = (pkgs.lib).optionals (flags.example) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."sdl2" or ((hsPkgs.pkgs-errors).buildDepError "sdl2"))
            (hsPkgs."sdl2-ttf" or ((hsPkgs.pkgs-errors).buildDepError "sdl2-ttf"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = if flags.example then true else false;
          };
        };
      };
    }