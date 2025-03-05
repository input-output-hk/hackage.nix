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
      identifier = { name = "aztecs-sdl-image"; version = "0.6.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "matt@hunzinger.me";
      author = "Matt Hunzinger";
      homepage = "https://github.com/aztecs-hs/aztecs-sdl-image";
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
          (hsPkgs."aztecs-sdl" or (errorHandler.buildDepError "aztecs-sdl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
          (hsPkgs."sdl2-image" or (errorHandler.buildDepError "sdl2-image"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
        ];
        buildable = true;
      };
    };
  }