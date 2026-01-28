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
      identifier = { name = "aztecs-gl"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "matt@hunzinger.me";
      author = "Matt Hunzinger";
      homepage = "https://github.com/aztecs-hs/aztecs";
      url = "";
      synopsis = "OpenGL rendering for Aztecs";
      description = "OpenGL rendering for the Aztecs game engine and ECS";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aztecs" or (errorHandler.buildDepError "aztecs"))
          (hsPkgs."aztecs-glfw" or (errorHandler.buildDepError "aztecs-glfw"))
          (hsPkgs."aztecs-transform" or (errorHandler.buildDepError "aztecs-transform"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "aztecs-gl-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aztecs-gl" or (errorHandler.buildDepError "aztecs-gl"))
          ];
          buildable = true;
        };
      };
    };
  }