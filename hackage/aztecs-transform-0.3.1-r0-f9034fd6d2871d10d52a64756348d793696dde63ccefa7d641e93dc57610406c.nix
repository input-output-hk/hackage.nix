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
      identifier = { name = "aztecs-transform"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "matt@hunzinger.me";
      author = "Matt Hunzinger";
      homepage = "https://github.com/matthunz/aztecs";
      url = "";
      synopsis = "Transform components for Aztecs";
      description = "Transform components for the Aztecs game engine and ECS";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aztecs" or (errorHandler.buildDepError "aztecs"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
        ];
        buildable = true;
      };
    };
  }