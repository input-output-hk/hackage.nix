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
      identifier = { name = "dynamic-graph"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2014 Adam Walker";
      maintainer = "adamwalker10@gmail.com";
      author = "Adam Walker";
      homepage = "";
      url = "";
      synopsis = "Draw and update graphs in real time with OpenGL";
      description = "Draw and update graphs in real time with OpenGL. Suitable for displaying large amounts of frequently changing data. At this time, line graphs and waterfall plots are supported. Axis drawing will be added in a future version.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          (hsPkgs."GLUtil" or (errorHandler.buildDepError "GLUtil"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
        ];
        buildable = true;
      };
    };
  }