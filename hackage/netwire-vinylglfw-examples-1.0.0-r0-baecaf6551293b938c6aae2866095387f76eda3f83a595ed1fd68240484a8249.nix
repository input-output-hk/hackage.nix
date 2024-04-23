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
      identifier = { name = "netwire-vinylglfw-examples"; version = "1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "runKleisli@openmailbox.org";
      author = "Rand Kleisli";
      homepage = "";
      url = "";
      synopsis = "Netwire/GLFW/VinylGL input handling demo";
      description = "Port of netwire-input-glfw example to VinylGL & GLSL 1.50. Uses Netwire 5 and Vinyl >= 0.4. NetVinylGLFW is a previous combination of Netwire, VinylGL, & GLFW, but its Netwire and Vinyl versions are outdated as of 2016. The combination with STM that it suggests is embraced by netwire-input-glfw.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "netwire-vinylglfw-style0" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
            (hsPkgs."netwire" or (errorHandler.buildDepError "netwire"))
            (hsPkgs."netwire-input" or (errorHandler.buildDepError "netwire-input"))
            (hsPkgs."netwire-input-glfw" or (errorHandler.buildDepError "netwire-input-glfw"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."GLUtil" or (errorHandler.buildDepError "GLUtil"))
            (hsPkgs."vinyl-gl" or (errorHandler.buildDepError "vinyl-gl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = true;
        };
        "netwire-vinylglfw-style1" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
            (hsPkgs."netwire" or (errorHandler.buildDepError "netwire"))
            (hsPkgs."netwire-input" or (errorHandler.buildDepError "netwire-input"))
            (hsPkgs."netwire-input-glfw" or (errorHandler.buildDepError "netwire-input-glfw"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."GLUtil" or (errorHandler.buildDepError "GLUtil"))
            (hsPkgs."vinyl-gl" or (errorHandler.buildDepError "vinyl-gl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = true;
        };
        "netwire-vinylglfw-style2" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
            (hsPkgs."netwire" or (errorHandler.buildDepError "netwire"))
            (hsPkgs."netwire-input" or (errorHandler.buildDepError "netwire-input"))
            (hsPkgs."netwire-input-glfw" or (errorHandler.buildDepError "netwire-input-glfw"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."GLUtil" or (errorHandler.buildDepError "GLUtil"))
            (hsPkgs."vinyl-gl" or (errorHandler.buildDepError "vinyl-gl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = true;
        };
      };
    };
  }