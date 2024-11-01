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
      identifier = { name = "prologue"; version = "1.0.5"; };
      license = "Apache-2.0";
      copyright = "Copyright (C) 2014 Wojciech Danilo";
      maintainer = "Wojciech Danilo <wojciech.danilo@gmail.com>";
      author = "Wojciech Danilo";
      homepage = "https://github.com/wdanilo/prologue";
      url = "";
      synopsis = "Better, more general Prelude exporting common utilities.";
      description = "Replacement for the Haskell's Prelude, exposing more commonly used functions and patching old GHC ones to behave in the newest GHC's way.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."cond" or (errorHandler.buildDepError "cond"))
          (hsPkgs."container" or (errorHandler.buildDepError "container"))
          (hsPkgs."convert" or (errorHandler.buildDepError "convert"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."data-repr" or (errorHandler.buildDepError "data-repr"))
          (hsPkgs."data-layer" or (errorHandler.buildDepError "data-layer"))
          (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."lens-utils" or (errorHandler.buildDepError "lens-utils"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."string-qq" or (errorHandler.buildDepError "string-qq"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."tuple" or (errorHandler.buildDepError "tuple"))
          (hsPkgs."functor-utils" or (errorHandler.buildDepError "functor-utils"))
        ];
        buildable = true;
      };
    };
  }