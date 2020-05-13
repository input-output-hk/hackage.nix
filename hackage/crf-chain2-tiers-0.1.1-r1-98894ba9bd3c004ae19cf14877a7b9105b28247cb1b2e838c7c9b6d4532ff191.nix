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
      identifier = { name = "crf-chain2-tiers"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013 IPI PAN";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "https://github.com/kawu/crf-chain2-tiers";
      url = "";
      synopsis = "Second-order, tiered, constrained, linear conditional random fields";
      description = "The library provides implementation of the second-order, linear\nconditional random fields (CRFs) with position-wise constraints\nimposed over label values.  Each label consists of a vector of\nsmaller, atomic labels, and over each tier (layer) a separate\nset of model features is defined.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."vector-binary" or (errorHandler.buildDepError "vector-binary"))
          (hsPkgs."monad-codec" or (errorHandler.buildDepError "monad-codec"))
          (hsPkgs."data-lens" or (errorHandler.buildDepError "data-lens"))
          (hsPkgs."comonad-transformers" or (errorHandler.buildDepError "comonad-transformers"))
          (hsPkgs."logfloat" or (errorHandler.buildDepError "logfloat"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."sgd" or (errorHandler.buildDepError "sgd"))
          ];
        buildable = true;
        };
      };
    }