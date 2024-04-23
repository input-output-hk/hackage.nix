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
      identifier = { name = "sdl2-ttf"; version = "1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Rongcui Dong (karl_1702@188.com)";
      author = "Ömer Sinan Ağacan (omeragacan@gmail.com)\n, Sean Chalmers (sclhiannan@gmail.com)";
      homepage = "";
      url = "";
      synopsis = "Binding to libSDL2-ttf";
      description = "Haskell bindings to the sdl2-ttf C++ library <http://www.libsdl.org/projects/SDL_ttf/>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        libs = [
          (pkgs."SDL2" or (errorHandler.sysDepError "SDL2"))
          (pkgs."SDL2_ttf" or (errorHandler.sysDepError "SDL2_ttf"))
        ];
        buildable = true;
      };
      exes = {
        "font-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            (hsPkgs."sdl2-ttf" or (errorHandler.buildDepError "sdl2-ttf"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          ];
          buildable = true;
        };
      };
    };
  }