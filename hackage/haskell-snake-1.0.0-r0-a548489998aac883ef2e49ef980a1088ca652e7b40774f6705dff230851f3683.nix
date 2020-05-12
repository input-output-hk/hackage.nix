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
      identifier = { name = "haskell-snake"; version = "1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Przemysław Kamiński <cgenie@gmail.com>";
      author = "";
      homepage = "https://github.com/CGenie/haskell-snake#readme";
      url = "";
      synopsis = "Snake game implemetation in Haskell using SDL2";
      description = "See README at <https://github.com/CGenie/haskell-snake>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
          (hsPkgs."sdl2-ttf" or (errorHandler.buildDepError "sdl2-ttf"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "haskell-snake" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."haskell-snake" or (errorHandler.buildDepError "haskell-snake"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            (hsPkgs."sdl2-ttf" or (errorHandler.buildDepError "sdl2-ttf"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }