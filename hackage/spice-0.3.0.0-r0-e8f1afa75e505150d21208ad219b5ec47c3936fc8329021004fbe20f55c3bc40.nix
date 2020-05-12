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
      identifier = { name = "spice"; version = "0.3.0.0"; };
      license = "MIT";
      copyright = "(c) 2014, Cerek Hillen";
      maintainer = "Cerek Hillen <cerekh@gmail.com>";
      author = "Cerek Hillen";
      homepage = "http://github.com/crockeo/spice";
      url = "";
      synopsis = "An FRP-based game engine written in Haskell.";
      description = "An FRP-based game engine written in Haskell. - See the homepage for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."elerea" or (errorHandler.buildDepError "elerea"))
          (hsPkgs."GLFW" or (errorHandler.buildDepError "GLFW"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          ];
        buildable = true;
        };
      };
    }