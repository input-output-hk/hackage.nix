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
      identifier = { name = "OpenGL"; version = "2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sven Panne <sven.panne@aedion.de>";
      author = "";
      homepage = "http://www.haskell.org/HOpenGL/";
      url = "";
      synopsis = "A binding for the OpenGL graphics system";
      description = "A Haskell binding for the OpenGL graphics system (GL, version\n1.5) and its accompanying utility library (GLU, version 1.3).\nOpenGL is the industry's most widely used and supported 2D and 3D\ngraphics application programming interface (API), incorporating\na broad set of rendering, texture mapping, special effects, and\nother powerful visualization functions.  For more information\nabout OpenGL, please see: <http://www.opengl.org/>.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }