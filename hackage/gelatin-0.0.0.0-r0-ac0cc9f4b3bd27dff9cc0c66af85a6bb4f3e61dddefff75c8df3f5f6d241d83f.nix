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
      identifier = { name = "gelatin"; version = "0.0.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "efsubenovex@gmail.com";
      author = "Schell Scivally";
      homepage = "";
      url = "";
      synopsis = "An experimental real time renderer.";
      description = "gelatin is a very experimental real time rendering\nengine for 2d graphics. It is backed by opengl 3.2.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."gl" or (errorHandler.buildDepError "gl"))
          (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
          (hsPkgs."FontyFruity" or (errorHandler.buildDepError "FontyFruity"))
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gelatin-core" or (errorHandler.buildDepError "gelatin-core"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."gl" or (errorHandler.buildDepError "gl"))
            (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
            (hsPkgs."FontyFruity" or (errorHandler.buildDepError "FontyFruity"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }