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
      identifier = { name = "audiovisual"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2015 Fumiaki Kinoshita";
      maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
      author = "Fumiaki Kinoshita";
      homepage = "https://github.com/fumieval/audiovisual";
      url = "";
      synopsis = "A battery-included audiovisual framework";
      description = "Types and utilities for audio and graphic stuff";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."objective" or (errorHandler.buildDepError "objective"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."colors" or (errorHandler.buildDepError "colors"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."freetype2" or (errorHandler.buildDepError "freetype2"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."boundingboxes" or (errorHandler.buildDepError "boundingboxes"))
          (hsPkgs."JuicyPixels-util" or (errorHandler.buildDepError "JuicyPixels-util"))
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."void" or (errorHandler.buildDepError "void"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."WAVE" or (errorHandler.buildDepError "WAVE"))
          ];
        buildable = true;
        };
      };
    }