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
      identifier = { name = "gloss-rendering"; version = "1.9.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "elise@jabberwocky.eu benl@ouroborus.net";
      author = "Elise Huard";
      homepage = "";
      url = "";
      synopsis = "Gloss Picture data type and rendering functions.     ";
      description = "Gloss Picture data type and rendering functions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
          (hsPkgs."bmp" or (errorHandler.buildDepError "bmp"))
        ];
        buildable = true;
      };
    };
  }