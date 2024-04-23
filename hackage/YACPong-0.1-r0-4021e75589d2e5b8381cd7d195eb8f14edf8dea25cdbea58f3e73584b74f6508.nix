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
      specVersion = "1.4";
      identifier = { name = "YACPong"; version = "0.1"; };
      license = "MIT";
      copyright = "Copyright (c) 2010 Korcan Hussein";
      maintainer = "korcan_h@hotmail.com";
      author = "Korcan Hussein";
      homepage = "http://github.com/snkkid/YACPong";
      url = "";
      synopsis = "Yet Another Pong Clone using SDL.";
      description = "Yet Another Pong Clone using SDL.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "YACPong" = {
          depends = [
            (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
            (hsPkgs."SDL-image" or (errorHandler.buildDepError "SDL-image"))
            (hsPkgs."SDL-mixer" or (errorHandler.buildDepError "SDL-mixer"))
            (hsPkgs."SDL-ttf" or (errorHandler.buildDepError "SDL-ttf"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-accessor-transformers" or (errorHandler.buildDepError "data-accessor-transformers"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."monads-fd" or (errorHandler.buildDepError "monads-fd"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
      };
    };
  }