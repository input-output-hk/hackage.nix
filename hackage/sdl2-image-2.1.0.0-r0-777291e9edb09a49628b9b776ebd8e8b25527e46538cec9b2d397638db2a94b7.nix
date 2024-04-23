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
      identifier = { name = "sdl2-image"; version = "2.1.0.0"; };
      license = "MIT";
      copyright = "2014 Cal Lei,\n2015 Siniša Biđin,\n2021 Daniel Firth";
      maintainer = "Siniša Biđin <sinisa@bidin.eu>,\nDaniel Firth <dan.firth@homotopic.tech>";
      author = "Cai Lei,\nSiniša Biđin,\nDaniel Firth";
      homepage = "";
      url = "";
      synopsis = "Haskell bindings to SDL2_image";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        libs = [
          (pkgs."SDL2_image" or (errorHandler.sysDepError "SDL2_image"))
        ];
        pkgconfig = [
          (pkgconfPkgs."sdl2" or (errorHandler.pkgConfDepError "sdl2"))
          (pkgconfPkgs."SDL2_image" or (errorHandler.pkgConfDepError "SDL2_image"))
        ];
        buildable = true;
      };
      exes = {
        "sdl2-image-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            (hsPkgs."sdl2-image" or (errorHandler.buildDepError "sdl2-image"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          libs = [
            (pkgs."SDL2_image" or (errorHandler.sysDepError "SDL2_image"))
          ];
          pkgconfig = [
            (pkgconfPkgs."sdl2" or (errorHandler.pkgConfDepError "sdl2"))
            (pkgconfPkgs."SDL2_image" or (errorHandler.pkgConfDepError "SDL2_image"))
          ];
          buildable = true;
        };
      };
    };
  }