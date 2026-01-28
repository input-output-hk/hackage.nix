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
      specVersion = "3.0";
      identifier = { name = "aztecs-gl-text"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "matt@hunzinger.me";
      author = "Matt Hunzinger";
      homepage = "https://github.com/aztecs-hs/aztecs";
      url = "";
      synopsis = "OpenGL text rendering for Aztecs";
      description = "OpenGL text rendering for the Aztecs game engine and ECS";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aztecs" or (errorHandler.buildDepError "aztecs"))
          (hsPkgs."aztecs-gl" or (errorHandler.buildDepError "aztecs-gl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."freetype2" or (errorHandler.buildDepError "freetype2"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "aztecs-gl-text-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aztecs-gl-text" or (errorHandler.buildDepError "aztecs-gl-text"))
          ];
          buildable = true;
        };
      };
    };
  }