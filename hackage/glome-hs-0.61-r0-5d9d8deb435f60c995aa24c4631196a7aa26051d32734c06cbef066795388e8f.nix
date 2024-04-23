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
      specVersion = "1.2";
      identifier = { name = "glome-hs"; version = "0.61"; };
      license = "LicenseRef-GPL";
      copyright = "Copyright 2008,2010 Jim Snow";
      maintainer = "Jim Snow <jsnow@cs.pdx.edu>";
      author = "Jim Snow";
      homepage = "http://haskell.org/haskellwiki/Glome";
      url = "";
      synopsis = "ray tracer";
      description = "Ray Tracer capable of rendering a variety of primitives,\nwith support for CSG (difference and intersection of solids),\nBIH-based acceleration structure, and ability to load NFF\nformat files.  The rendering algorithms have been abstracted\nto an external library, GlomeTrace.  This is just a front-end\nto the library that renders scenes into an opengl window.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."GlomeVec" or (errorHandler.buildDepError "GlomeVec"))
          (hsPkgs."GlomeTrace" or (errorHandler.buildDepError "GlomeTrace"))
        ];
        buildable = true;
      };
      exes = {
        "Glome" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."GlomeVec" or (errorHandler.buildDepError "GlomeVec"))
            (hsPkgs."GlomeTrace" or (errorHandler.buildDepError "GlomeTrace"))
          ];
          buildable = true;
        };
      };
    };
  }