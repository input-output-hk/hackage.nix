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
      identifier = { name = "free-game"; version = "0.3.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2012-2013 Fumiaki Kinoshita";
      maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
      author = "Fumiaki Kinoshita";
      homepage = "https://github.com/fumieval/free-game";
      url = "";
      synopsis = "Create graphical applications for free.";
      description = "Cross-platform GUI library based on free monads";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
          (hsPkgs."JuicyPixels-repa" or (errorHandler.buildDepError "JuicyPixels-repa"))
          (hsPkgs."vect" or (errorHandler.buildDepError "vect"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."freetype2" or (errorHandler.buildDepError "freetype2"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
          (hsPkgs."StateVar" or (errorHandler.buildDepError "StateVar"))
          ];
        buildable = true;
        };
      };
    }