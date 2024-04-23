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
      specVersion = "1.8";
      identifier = { name = "free-game"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2012 Fumiaki Kinoshita";
      maintainer = "fumiexcel@gmail.com";
      author = "Fumiaki Kinoshita";
      homepage = "https://github.com/fumieval/free-game";
      url = "";
      synopsis = "Create graphical applications for free.";
      description = "Create something graphical with useful free monads.\n\n/Small instruction/\n\n* load your image by loadBitmapFromFile, embedIO, and loadPicture.\n\n* describe an application using drawPicture, askInput, tick, and so on, in Game monad.\n\n* apply `runGame defaultGameParam` to run.\n\n* That's all!\n\nThere are experimental implementation of text rendering, but it yields strange pictures.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
          (hsPkgs."JuicyPixels-repa" or (errorHandler.buildDepError "JuicyPixels-repa"))
          (hsPkgs."vect" or (errorHandler.buildDepError "vect"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."stb-truetype" or (errorHandler.buildDepError "stb-truetype"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
          (hsPkgs."StateVar" or (errorHandler.buildDepError "StateVar"))
        ];
        buildable = true;
      };
    };
  }