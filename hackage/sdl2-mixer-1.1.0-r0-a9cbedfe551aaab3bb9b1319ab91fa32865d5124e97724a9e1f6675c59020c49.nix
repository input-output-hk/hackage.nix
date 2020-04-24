{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { example = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "sdl2-mixer"; version = "1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2015 Vladimir Semyonov\nCopyright © 2015 Siniša Biđin";
      maintainer = "Siniša Biđin <sinisa@bidin.eu>";
      author = "Vladimir Semyonov <tempname011@gmail.com>\nSiniša Biđin <sinisa@bidin.eu>";
      homepage = "";
      url = "";
      synopsis = "Bindings to SDL2_mixer.";
      description = "Haskell bindings to SDL2_mixer.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
          (hsPkgs."lifted-base" or ((hsPkgs.pkgs-errors).buildDepError "lifted-base"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          (hsPkgs."sdl2" or ((hsPkgs.pkgs-errors).buildDepError "sdl2"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        libs = [
          (pkgs."SDL2_mixer" or ((hsPkgs.pkgs-errors).sysDepError "SDL2_mixer"))
          ];
        pkgconfig = [
          (pkgconfPkgs."SDL2_mixer" or ((hsPkgs.pkgs-errors).pkgConfDepError "SDL2_mixer"))
          ];
        buildable = true;
        };
      exes = {
        "sdl2-mixer-basic" = {
          depends = (pkgs.lib).optionals (flags.example) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
            (hsPkgs."sdl2" or ((hsPkgs.pkgs-errors).buildDepError "sdl2"))
            (hsPkgs."sdl2-mixer" or ((hsPkgs.pkgs-errors).buildDepError "sdl2-mixer"))
            ];
          buildable = if flags.example then true else false;
          };
        "sdl2-mixer-raw" = {
          depends = (pkgs.lib).optionals (flags.example) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."sdl2" or ((hsPkgs.pkgs-errors).buildDepError "sdl2"))
            (hsPkgs."sdl2-mixer" or ((hsPkgs.pkgs-errors).buildDepError "sdl2-mixer"))
            ];
          buildable = if flags.example then true else false;
          };
        "sdl2-mixer-jumbled" = {
          depends = (pkgs.lib).optionals (flags.example) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
            (hsPkgs."sdl2" or ((hsPkgs.pkgs-errors).buildDepError "sdl2"))
            (hsPkgs."sdl2-mixer" or ((hsPkgs.pkgs-errors).buildDepError "sdl2-mixer"))
            ];
          buildable = if flags.example then true else false;
          };
        "sdl2-mixer-music" = {
          depends = (pkgs.lib).optionals (flags.example) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
            (hsPkgs."sdl2" or ((hsPkgs.pkgs-errors).buildDepError "sdl2"))
            (hsPkgs."sdl2-mixer" or ((hsPkgs.pkgs-errors).buildDepError "sdl2-mixer"))
            ];
          buildable = if flags.example then true else false;
          };
        "sdl2-mixer-effect" = {
          depends = (pkgs.lib).optionals (flags.example) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
            (hsPkgs."sdl2" or ((hsPkgs.pkgs-errors).buildDepError "sdl2"))
            (hsPkgs."sdl2-mixer" or ((hsPkgs.pkgs-errors).buildDepError "sdl2-mixer"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = if flags.example then true else false;
          };
        };
      };
    }