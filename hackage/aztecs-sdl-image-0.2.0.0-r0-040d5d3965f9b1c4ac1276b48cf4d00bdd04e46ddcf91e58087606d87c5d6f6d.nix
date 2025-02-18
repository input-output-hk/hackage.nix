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
      specVersion = "2.4";
      identifier = { name = "aztecs-sdl-image"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "matt@hunzinger.me";
      author = "Matt Hunzinger";
      homepage = "https://github.com/matthunz/aztecs";
      url = "";
      synopsis = "A type-safe and friendly Entity-Component-System (ECS) for Haskell";
      description = "The Entity-Component-System (ECS) pattern is commonly used in video game develop to represent world objects.\n\nECS follows the principal of composition over inheritence. Each type of\nobject (e.g. sword, monster, etc), in the game has a unique EntityId. Each\nentity has various Components associated with it (material, weight, damage, etc).\nSystems act on entities which have the required Components.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aztecs" or (errorHandler.buildDepError "aztecs"))
          (hsPkgs."aztecs-asset" or (errorHandler.buildDepError "aztecs-asset"))
          (hsPkgs."aztecs-sdl" or (errorHandler.buildDepError "aztecs-sdl"))
          (hsPkgs."aztecs-transform" or (errorHandler.buildDepError "aztecs-transform"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
          (hsPkgs."sdl2-image" or (errorHandler.buildDepError "sdl2-image"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
        ];
        buildable = true;
      };
      exes = {
        "image" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aztecs-sdl" or (errorHandler.buildDepError "aztecs-sdl"))
            (hsPkgs."aztecs-sdl-image" or (errorHandler.buildDepError "aztecs-sdl-image"))
            (hsPkgs."aztecs" or (errorHandler.buildDepError "aztecs"))
            (hsPkgs."aztecs-asset" or (errorHandler.buildDepError "aztecs-asset"))
            (hsPkgs."aztecs-transform" or (errorHandler.buildDepError "aztecs-transform"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
          ];
          buildable = true;
        };
        "sprite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aztecs-sdl" or (errorHandler.buildDepError "aztecs-sdl"))
            (hsPkgs."aztecs-sdl-image" or (errorHandler.buildDepError "aztecs-sdl-image"))
            (hsPkgs."aztecs" or (errorHandler.buildDepError "aztecs"))
            (hsPkgs."aztecs-asset" or (errorHandler.buildDepError "aztecs-asset"))
            (hsPkgs."aztecs-transform" or (errorHandler.buildDepError "aztecs-transform"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
          ];
          buildable = true;
        };
      };
    };
  }