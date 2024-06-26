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
      specVersion = "1.6";
      identifier = { name = "AbortT-monadstf"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Gregory Crosswhite <gcrosswhite@gmail.com>";
      author = "Gregory Crosswhite";
      homepage = "http://github.com/gcross/AbortT-transformers";
      url = "";
      synopsis = "Monads-tf instances for the AbortT monad transformer.";
      description = "This module provides instances for the monads-tf classes for AbortT.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."AbortT-transformers" or (errorHandler.buildDepError "AbortT-transformers"))
          (hsPkgs."monads-tf" or (errorHandler.buildDepError "monads-tf"))
        ];
        buildable = true;
      };
    };
  }