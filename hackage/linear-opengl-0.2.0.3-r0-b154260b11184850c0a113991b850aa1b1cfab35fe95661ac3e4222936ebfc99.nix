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
      identifier = { name = "linear-opengl"; version = "0.2.0.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Ben Gamari";
      maintainer = "bgamari.foss@gmail.com";
      author = "Ben Gamari";
      homepage = "http://www.github.com/bgamari/linear-opengl";
      url = "";
      synopsis = "Isomorphisms between linear and OpenGL types";
      description = "This provides various useful utilities for mapping OpenGL vectors, vertices, and matrices to their analogues in the `linear` package";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."distributive" or (errorHandler.buildDepError "distributive"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          (hsPkgs."OpenGLRaw" or (errorHandler.buildDepError "OpenGLRaw"))
          ];
        buildable = true;
        };
      };
    }