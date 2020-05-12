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
      specVersion = "1.18";
      identifier = { name = "Hate"; version = "0.1.4.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "bananu7@o2.pl";
      author = "Bartek Banachewicz";
      homepage = "http://github.com/bananu7/Hate";
      url = "";
      synopsis = "A small 2D game framework.";
      description = "A small 2D game framework. ";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
          (hsPkgs."GLUtil" or (errorHandler.buildDepError "GLUtil"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."vect" or (errorHandler.buildDepError "vect"))
          (hsPkgs."vect-opengl" or (errorHandler.buildDepError "vect-opengl"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          (hsPkgs."JuicyPixels-util" or (errorHandler.buildDepError "JuicyPixels-util"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."multimap" or (errorHandler.buildDepError "multimap"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ];
        buildable = true;
        };
      exes = {
        "sample_shapes" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
            (hsPkgs."GLUtil" or (errorHandler.buildDepError "GLUtil"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."vect" or (errorHandler.buildDepError "vect"))
            (hsPkgs."vect-opengl" or (errorHandler.buildDepError "vect-opengl"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."JuicyPixels-util" or (errorHandler.buildDepError "JuicyPixels-util"))
            (hsPkgs."Hate" or (errorHandler.buildDepError "Hate"))
            ];
          buildable = true;
          };
        "sample_scheduler" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
            (hsPkgs."GLUtil" or (errorHandler.buildDepError "GLUtil"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."vect" or (errorHandler.buildDepError "vect"))
            (hsPkgs."vect-opengl" or (errorHandler.buildDepError "vect-opengl"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."JuicyPixels-util" or (errorHandler.buildDepError "JuicyPixels-util"))
            (hsPkgs."Hate" or (errorHandler.buildDepError "Hate"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            ];
          buildable = true;
          };
        "sample_sprite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
            (hsPkgs."GLUtil" or (errorHandler.buildDepError "GLUtil"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."vect" or (errorHandler.buildDepError "vect"))
            (hsPkgs."vect-opengl" or (errorHandler.buildDepError "vect-opengl"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."JuicyPixels-util" or (errorHandler.buildDepError "JuicyPixels-util"))
            (hsPkgs."Hate" or (errorHandler.buildDepError "Hate"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            ];
          buildable = true;
          };
        "sample_spritesheet" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
            (hsPkgs."GLUtil" or (errorHandler.buildDepError "GLUtil"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."vect" or (errorHandler.buildDepError "vect"))
            (hsPkgs."vect-opengl" or (errorHandler.buildDepError "vect-opengl"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."JuicyPixels-util" or (errorHandler.buildDepError "JuicyPixels-util"))
            (hsPkgs."Hate" or (errorHandler.buildDepError "Hate"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            ];
          buildable = true;
          };
        "sample_asteroids" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
            (hsPkgs."GLUtil" or (errorHandler.buildDepError "GLUtil"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."vect" or (errorHandler.buildDepError "vect"))
            (hsPkgs."vect-opengl" or (errorHandler.buildDepError "vect-opengl"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."JuicyPixels-util" or (errorHandler.buildDepError "JuicyPixels-util"))
            (hsPkgs."Hate" or (errorHandler.buildDepError "Hate"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            ];
          buildable = true;
          };
        };
      };
    }