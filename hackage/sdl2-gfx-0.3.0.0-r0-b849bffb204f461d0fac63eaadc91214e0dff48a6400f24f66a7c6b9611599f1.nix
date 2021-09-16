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
      specVersion = "1.12";
      identifier = { name = "sdl2-gfx"; version = "0.3.0.0"; };
      license = "MIT";
      copyright = "2015 Siniša Biđin,\n2021 Daniel Firth";
      maintainer = "Siniša Biđin <sinisa@bidin.eu>,\nDaniel Firth <dan.firth@homotopic.tech>";
      author = "Siniša Biđin,\nDaniel Firth";
      homepage = "";
      url = "";
      synopsis = "Haskell bindings to SDL2_gfx";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        libs = [ (pkgs."SDL2_gfx" or (errorHandler.sysDepError "SDL2_gfx")) ];
        pkgconfig = [
          (pkgconfPkgs."sdl2" or (errorHandler.pkgConfDepError "sdl2"))
          (pkgconfPkgs."SDL2_gfx" or (errorHandler.pkgConfDepError "SDL2_gfx"))
          ];
        buildable = true;
        };
      exes = {
        "sdl2-gfx-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            (hsPkgs."sdl2-gfx" or (errorHandler.buildDepError "sdl2-gfx"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          libs = [ (pkgs."SDL2_gfx" or (errorHandler.sysDepError "SDL2_gfx")) ];
          pkgconfig = [
            (pkgconfPkgs."sdl2" or (errorHandler.pkgConfDepError "sdl2"))
            (pkgconfPkgs."SDL2_gfx" or (errorHandler.pkgConfDepError "SDL2_gfx"))
            ];
          buildable = true;
          };
        };
      };
    }