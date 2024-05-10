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
      identifier = { name = "Vis"; version = "0.7.7.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Greg Horn 2012-2015";
      maintainer = "Scott N. Walck <walck@lvc.edu>";
      author = "Greg Horn";
      homepage = "";
      url = "";
      synopsis = "Painless 3D graphics, no affiliation with gloss";
      description = "This package is a fork of Greg Horn's not-gloss package.\nThe dependencies have been changed so that it builds with recent ghc versions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          (hsPkgs."OpenGLRaw" or (errorHandler.buildDepError "OpenGLRaw"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bmp" or (errorHandler.buildDepError "bmp"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."vector-binary-instances" or (errorHandler.buildDepError "vector-binary-instances"))
        ];
        buildable = true;
      };
    };
  }