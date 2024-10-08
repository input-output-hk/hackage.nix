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
      specVersion = "1.8";
      identifier = { name = "lambda-canvas"; version = "0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Dimitry Solovyov <dimituri@gmail.com>";
      author = "Dimitry Solovyov <dimituri@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Educational drawing canvas for FP explorers.";
      description = "This package is an experimental teaching tool that\nprovides the foundation for presenting functional\nidioms with graphical metaphors. The OpenGL canvas\nboilerplate is abstracted away to a simple interface,\nwhich allows to focus on program logic instead of the\ngraphics API. It's also arguably fun.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
    };
  }