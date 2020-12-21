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
      identifier = { name = "gloss-export"; version = "0.1.0.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "timo-a@gmx.ch";
      author = "Timo A";
      homepage = "https://gitlab.com/timo-a/gloss-export#readme";
      url = "";
      synopsis = "Export Gloss pictures to png, bmp, tga, tiff, gif and juicy-pixels-image";
      description = "Please see the README on GitLab at <https://gitlab.com/timo-a/gloss-export#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."gloss-rendering" or (errorHandler.buildDepError "gloss-rendering"))
          (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
          (hsPkgs."OpenGLRaw" or (errorHandler.buildDepError "OpenGLRaw"))
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
          ];
        buildable = true;
        };
      exes = {
        "gloss-export-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
            (hsPkgs."gloss-export" or (errorHandler.buildDepError "gloss-export"))
            ];
          buildable = true;
          };
        };
      tests = {
        "gloss-export-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
            (hsPkgs."gloss-export" or (errorHandler.buildDepError "gloss-export"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            ];
          buildable = true;
          };
        };
      };
    }