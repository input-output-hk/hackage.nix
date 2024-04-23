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
      specVersion = "1.10";
      identifier = { name = "sdl2-cairo-image"; version = "1.0"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
          (hsPkgs."sdl2-cairo" or (errorHandler.buildDepError "sdl2-cairo"))
          (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
          (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
        ];
        buildable = true;
      };
      exes = {
        "main" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            (hsPkgs."sdl2-cairo" or (errorHandler.buildDepError "sdl2-cairo"))
            (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
            (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
          ];
          buildable = true;
        };
      };
    };
  }