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
    flags = {
      buildhelloworld = false;
      glforwardcompat = true;
      glcoreprofile = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "call"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) Fumiaki Kinoshita 2014";
      maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
      author = "Fumiaki Kinoshita";
      homepage = "https://github.com/fumieval/call";
      url = "";
      synopsis = "The call game engine";
      description = "Call is a minimalistic game engine that supports 2D/3D graphics and sounds.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."audiovisual" or (errorHandler.buildDepError "audiovisual"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bindings-portaudio" or (errorHandler.buildDepError "bindings-portaudio"))
          (hsPkgs."audiovisual" or (errorHandler.buildDepError "audiovisual"))
          (hsPkgs."boundingboxes" or (errorHandler.buildDepError "boundingboxes"))
          (hsPkgs."colors" or (errorHandler.buildDepError "colors"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."control-bool" or (errorHandler.buildDepError "control-bool"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."freetype2" or (errorHandler.buildDepError "freetype2"))
          (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          (hsPkgs."JuicyPixels-util" or (errorHandler.buildDepError "JuicyPixels-util"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."objective" or (errorHandler.buildDepError "objective"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          (hsPkgs."OpenGLRaw" or (errorHandler.buildDepError "OpenGLRaw"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."WAVE" or (errorHandler.buildDepError "WAVE"))
          (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
        buildable = true;
        };
      exes = {
        "hello-world" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."call" or (errorHandler.buildDepError "call"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            ];
          buildable = if flags.buildhelloworld then true else false;
          };
        };
      };
    }