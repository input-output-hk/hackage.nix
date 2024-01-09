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
      identifier = { name = "gloss-rendering"; version = "1.13.1.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "elise@jabberwocky.eu benl@ouroborus.net";
      author = "Elise Huard";
      homepage = "";
      url = "";
      synopsis = "Gloss picture data types and rendering functions.";
      description = "Gloss picture data types and rendering functions. These functions\ndon't do any window management. If you want gloss to setup your window as\nwell then use the plain @gloss@ package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bmp" or (errorHandler.buildDepError "bmp"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          ];
        buildable = true;
        };
      };
    }