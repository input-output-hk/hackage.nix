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
      identifier = { name = "aztecs-glfw"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "matt@hunzinger.me";
      author = "Matt Hunzinger";
      homepage = "https://github.com/aztecs-hs/aztecs";
      url = "";
      synopsis = "GLFW backed for Aztecs";
      description = "GLFW backend for the Aztecs game engine and ECS";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aztecs" or (errorHandler.buildDepError "aztecs"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
        ];
        buildable = true;
      };
      exes = {
        "aztecs-glfw" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aztecs-glfw" or (errorHandler.buildDepError "aztecs-glfw"))
            (hsPkgs."aztecs" or (errorHandler.buildDepError "aztecs"))
          ];
          buildable = true;
        };
      };
      tests = {
        "aztecs-glfw-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aztecs-glfw" or (errorHandler.buildDepError "aztecs-glfw"))
          ];
          buildable = true;
        };
      };
    };
  }