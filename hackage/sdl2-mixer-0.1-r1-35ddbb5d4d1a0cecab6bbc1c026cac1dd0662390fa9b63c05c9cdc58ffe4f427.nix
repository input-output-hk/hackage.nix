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
    flags = { example = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "sdl2-mixer"; version = "0.1"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
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
          depends = pkgs.lib.optionals (flags.example) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            (hsPkgs."sdl2-mixer" or (errorHandler.buildDepError "sdl2-mixer"))
          ];
          buildable = if flags.example then true else false;
        };
        "sdl2-mixer-raw" = {
          depends = pkgs.lib.optionals (flags.example) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            (hsPkgs."sdl2-mixer" or (errorHandler.buildDepError "sdl2-mixer"))
          ];
          buildable = if flags.example then true else false;
        };
        "sdl2-mixer-jumbled" = {
          depends = pkgs.lib.optionals (flags.example) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            (hsPkgs."sdl2-mixer" or (errorHandler.buildDepError "sdl2-mixer"))
          ];
          buildable = if flags.example then true else false;
        };
        "sdl2-mixer-music" = {
          depends = pkgs.lib.optionals (flags.example) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            (hsPkgs."sdl2-mixer" or (errorHandler.buildDepError "sdl2-mixer"))
          ];
          buildable = if flags.example then true else false;
        };
        "sdl2-mixer-effect" = {
          depends = pkgs.lib.optionals (flags.example) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            (hsPkgs."sdl2-mixer" or (errorHandler.buildDepError "sdl2-mixer"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = if flags.example then true else false;
        };
      };
    };
  }