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
    flags = { ftgl = true; examples = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "graphics-drawingcombinators"; version = "1.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "lrpalmer@gmail.com";
      author = "Luke Palmer";
      homepage = "http://github.com/luqui/graphics-drawingcombinators";
      url = "";
      synopsis = "A functional interface to 2D drawing in OpenGL";
      description = "This module is a functional wrapper around OpenGL, so you don't\nhave to go into the deep, dark world of imperative stateful\nprogramming just to draw stuff.  It supports 2D only (for now),\nwith support drawing geometry, images, and text.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          (hsPkgs."stb-image" or (errorHandler.buildDepError "stb-image"))
          (hsPkgs."bitmap" or (errorHandler.buildDepError "bitmap"))
          ] ++ (if flags.ftgl
          then [ (hsPkgs."FTGL" or (errorHandler.buildDepError "FTGL")) ]
          else [ (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT")) ]);
        buildable = true;
        };
      exes = {
        "example" = {
          depends = (pkgs.lib).optionals (!(!flags.examples)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            (hsPkgs."graphics-drawingcombinators" or (errorHandler.buildDepError "graphics-drawingcombinators"))
            ];
          buildable = if !flags.examples then false else true;
          };
        };
      };
    }