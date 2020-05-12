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
      identifier = { name = "nyx-game"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "2019 Gil Mizrahi";
      maintainer = "gilmi@posteo.net";
      author = "Gil Mizrahi";
      homepage = "";
      url = "";
      synopsis = "A bullet-hell game made with SDL2.";
      description = "A purely functional bullet-hell game made with SDL2. Visit https://gilmi.me/nyx for more details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
          (hsPkgs."sdl2-image" or (errorHandler.buildDepError "sdl2-image"))
          (hsPkgs."sdl2-mixer" or (errorHandler.buildDepError "sdl2-mixer"))
          (hsPkgs."sdl2-ttf" or (errorHandler.buildDepError "sdl2-ttf"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "app" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."nyx-game" or (errorHandler.buildDepError "nyx-game"))
            (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            (hsPkgs."sdl2-image" or (errorHandler.buildDepError "sdl2-image"))
            (hsPkgs."sdl2-mixer" or (errorHandler.buildDepError "sdl2-mixer"))
            (hsPkgs."sdl2-ttf" or (errorHandler.buildDepError "sdl2-ttf"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }