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
      identifier = { name = "neet"; version = "0.4.0.0"; };
      license = "GPL-3.0-only";
      copyright = "Copyright (C) 2015 Leon Medvinsky";
      maintainer = "lmedvinsky@hotmail.com";
      author = "Leon Medvinsky";
      homepage = "https://github.com/raymoo/NEET";
      url = "";
      synopsis = "A NEAT library for Haskell";
      description = "This package provides functions for creating, training, and using NEAT neural\nnetworks.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."multimap" or (errorHandler.buildDepError "multimap"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."graphviz" or (errorHandler.buildDepError "graphviz"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
        ];
        buildable = true;
      };
    };
  }