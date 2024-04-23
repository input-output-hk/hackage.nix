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
      specVersion = "1.0";
      identifier = { name = "glome-hs"; version = "0.4.1"; };
      license = "LicenseRef-GPL";
      copyright = "Copyright 2008 Jim Snow";
      maintainer = "Jim Snow <jsnow@cs.pdx.edu>";
      author = "Jim Snow";
      homepage = "http://syn.cs.pdx.edu/~jsnow/glome";
      url = "";
      synopsis = "ray tracer";
      description = "Ray Tracer capable of rendering a variety of primitives,\nwith support for CSG (difference and intersection of solids),\nBIH-based acceleration structure, and ability to load NFF\nformat files.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "glome" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
          buildable = true;
        };
      };
    };
  }