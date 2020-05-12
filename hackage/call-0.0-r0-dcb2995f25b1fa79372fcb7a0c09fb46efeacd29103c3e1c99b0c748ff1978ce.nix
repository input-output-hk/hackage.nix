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
      identifier = { name = "call"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Fumiaki Kinoshita 2014";
      maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
      author = "Fumiaki Kinoshita";
      homepage = "https://github.com/fumieval/call";
      url = "";
      synopsis = "The call game engine";
      description = "Call is a minimalistic game engine which supports 2D graphics and sounds.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."control-bool" or (errorHandler.buildDepError "control-bool"))
          (hsPkgs."colors" or (errorHandler.buildDepError "colors"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."boundingboxes" or (errorHandler.buildDepError "boundingboxes"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          (hsPkgs."OpenGLRaw" or (errorHandler.buildDepError "OpenGLRaw"))
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          (hsPkgs."JuicyPixels-util" or (errorHandler.buildDepError "JuicyPixels-util"))
          (hsPkgs."WAVE" or (errorHandler.buildDepError "WAVE"))
          (hsPkgs."freetype2" or (errorHandler.buildDepError "freetype2"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."objective" or (errorHandler.buildDepError "objective"))
          (hsPkgs."bindings-portaudio" or (errorHandler.buildDepError "bindings-portaudio"))
          ];
        buildable = true;
        };
      };
    }