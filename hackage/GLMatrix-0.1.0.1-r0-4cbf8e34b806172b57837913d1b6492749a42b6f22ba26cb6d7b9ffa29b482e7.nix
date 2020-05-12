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
      identifier = { name = "GLMatrix"; version = "0.1.0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "fiendfan1@yahoo.com";
      author = "kig (Ilmari Heikkinen), fiendfan1";
      homepage = "https://github.com/fiendfan1/GLMatrix";
      url = "";
      synopsis = "Utilities for working with OpenGL matrices";
      description = "Some utilities for working with OpenGL matrices,\nmost of the source is from\nhttps://github.com/kig/tomtegebra/blob/master/Tomtegebra/Matrix.hs,\nby kig (Ilmari Heikkinen).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."OpenGLRaw" or (errorHandler.buildDepError "OpenGLRaw"))
          ];
        buildable = true;
        };
      };
    }