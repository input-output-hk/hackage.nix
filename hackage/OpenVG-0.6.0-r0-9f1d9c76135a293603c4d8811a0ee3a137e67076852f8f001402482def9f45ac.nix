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
      identifier = { name = "OpenVG"; version = "0.6.0"; };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "OpenVG (ShivaVG-0.2.1) binding";
      description = "A Haskell binding for the OpenVG vector graphics API version\n1.0.1, specifically the ShivaVG-0.2.1 implementation.\n\nThis version (0.6.0) is NOT compatible with the Haskell Platform\n(2009.2.0.2) - it uses the split OpenGL packages (RAW, StateVar,\netc.).\n\n\\*\\* WARNING - large parts of the API (particular the Paths\nmodule) are untested and may be revised in future. \\*\\*.\n\nChangelog\n\n0.5.0 to 0.6.0\n\n* Added an opaque matrix type to RenderingQuality.\nAcknowledgement - this was derived from the Matrix class\nin HOpenGL.\n\n* Revised Image module - PixelData is now an opaque type rather\nthan a raw pointer.\n\n* Work on Path module - pathBounds implemented. This module is\nentirely untested and may change again in the future.\n\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
          (hsPkgs."OpenGLRaw" or (errorHandler.buildDepError "OpenGLRaw"))
          (hsPkgs."StateVar" or (errorHandler.buildDepError "StateVar"))
          (hsPkgs."Tensor" or (errorHandler.buildDepError "Tensor"))
          (hsPkgs."OpenVGRaw" or (errorHandler.buildDepError "OpenVGRaw"))
        ];
        buildable = true;
      };
    };
  }