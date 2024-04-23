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
      identifier = { name = "sdl2-image"; version = "0.1.3.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "cailei@live.com";
      author = "Cai Lei";
      homepage = "";
      url = "";
      synopsis = "Haskell binding to sdl2-image.";
      description = "Haskell binding to sdl2-image.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
        ];
        libs = [ (pkgs."SDL2" or (errorHandler.sysDepError "SDL2")) ];
        pkgconfig = [
          (pkgconfPkgs."sdl2" or (errorHandler.pkgConfDepError "sdl2"))
          (pkgconfPkgs."SDL2_image" or (errorHandler.pkgConfDepError "SDL2_image"))
        ];
        buildable = true;
      };
    };
  }