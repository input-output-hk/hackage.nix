{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "sdl2-mixer"; version = "1.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2015 Vladimir Semyonov,\n2015 Siniša Biđin,\n2021 Daniel Firth";
      maintainer = "Siniša Biđin <sinisa@bidin.eu>,\nDaniel Firth <dan.firth@homotopic.tech>";
      author = "Vladimir Semyonov,\nSiniša Biđin,\nDaniel Firth";
      homepage = "";
      url = "";
      synopsis = "Haskell bindings to SDL2_mixer";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        libs = [
          (pkgs."SDL2_mixer" or (errorHandler.sysDepError "SDL2_mixer"))
        ];
        pkgconfig = [
          (pkgconfPkgs."SDL2_mixer" or (errorHandler.pkgConfDepError "SDL2_mixer"))
        ];
        buildable = true;
      };
      exes = {
        "sdl2-mixer-basic" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            (hsPkgs."sdl2-mixer" or (errorHandler.buildDepError "sdl2-mixer"))
          ];
          libs = [
            (pkgs."SDL2_mixer" or (errorHandler.sysDepError "SDL2_mixer"))
          ];
          pkgconfig = [
            (pkgconfPkgs."SDL2_mixer" or (errorHandler.pkgConfDepError "SDL2_mixer"))
          ];
          buildable = true;
        };
        "sdl2-mixer-basic-jumbled" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            (hsPkgs."sdl2-mixer" or (errorHandler.buildDepError "sdl2-mixer"))
          ];
          libs = [
            (pkgs."SDL2_mixer" or (errorHandler.sysDepError "SDL2_mixer"))
          ];
          pkgconfig = [
            (pkgconfPkgs."SDL2_mixer" or (errorHandler.pkgConfDepError "SDL2_mixer"))
          ];
          buildable = true;
        };
        "sdl2-mixer-basic-raw" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            (hsPkgs."sdl2-mixer" or (errorHandler.buildDepError "sdl2-mixer"))
          ];
          libs = [
            (pkgs."SDL2_mixer" or (errorHandler.sysDepError "SDL2_mixer"))
          ];
          pkgconfig = [
            (pkgconfPkgs."SDL2_mixer" or (errorHandler.pkgConfDepError "SDL2_mixer"))
          ];
          buildable = true;
        };
        "sdl2-mixer-effect" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            (hsPkgs."sdl2-mixer" or (errorHandler.buildDepError "sdl2-mixer"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          libs = [
            (pkgs."SDL2_mixer" or (errorHandler.sysDepError "SDL2_mixer"))
          ];
          pkgconfig = [
            (pkgconfPkgs."SDL2_mixer" or (errorHandler.pkgConfDepError "SDL2_mixer"))
          ];
          buildable = true;
        };
        "sdl2-mixer-music" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            (hsPkgs."sdl2-mixer" or (errorHandler.buildDepError "sdl2-mixer"))
          ];
          libs = [
            (pkgs."SDL2_mixer" or (errorHandler.sysDepError "SDL2_mixer"))
          ];
          pkgconfig = [
            (pkgconfPkgs."SDL2_mixer" or (errorHandler.pkgConfDepError "SDL2_mixer"))
          ];
          buildable = true;
        };
      };
    };
  }