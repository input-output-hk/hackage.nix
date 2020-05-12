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
      identifier = { name = "network-topic-models"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012 Ben Gamari";
      maintainer = "bgamari.foss@gmail.com";
      author = "Ben Gamari";
      homepage = "https://github.com/bgamari/bayes-stack";
      url = "";
      synopsis = "A few network topic model implementations for bayes-stack";
      description = "Implementations of a few network topic models build upon bayes-stack.\nThe package includes Latent Dirichlet Allocation\n(LDA), the shared taste model, and the citation\ninfluence model.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "bayes-stack-lda" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
            (hsPkgs."bimap" or (errorHandler.buildDepError "bimap"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."bayes-stack" or (errorHandler.buildDepError "bayes-stack"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."random-fu" or (errorHandler.buildDepError "random-fu"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."logfloat" or (errorHandler.buildDepError "logfloat"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        "bayes-stack-st" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
            (hsPkgs."bimap" or (errorHandler.buildDepError "bimap"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."bayes-stack" or (errorHandler.buildDepError "bayes-stack"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."random-fu" or (errorHandler.buildDepError "random-fu"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."logfloat" or (errorHandler.buildDepError "logfloat"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        "bayes-stack-ci" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
            (hsPkgs."bimap" or (errorHandler.buildDepError "bimap"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."bayes-stack" or (errorHandler.buildDepError "bayes-stack"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."random-fu" or (errorHandler.buildDepError "random-fu"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."logfloat" or (errorHandler.buildDepError "logfloat"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        "bayes-stack-dump-lda" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
            (hsPkgs."bimap" or (errorHandler.buildDepError "bimap"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."bayes-stack" or (errorHandler.buildDepError "bayes-stack"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."random-fu" or (errorHandler.buildDepError "random-fu"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."logfloat" or (errorHandler.buildDepError "logfloat"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        "bayes-stack-dump-st" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
            (hsPkgs."bimap" or (errorHandler.buildDepError "bimap"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."bayes-stack" or (errorHandler.buildDepError "bayes-stack"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."random-fu" or (errorHandler.buildDepError "random-fu"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."logfloat" or (errorHandler.buildDepError "logfloat"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        "bayes-stack-dump-ci" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
            (hsPkgs."bimap" or (errorHandler.buildDepError "bimap"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."bayes-stack" or (errorHandler.buildDepError "bayes-stack"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."random-fu" or (errorHandler.buildDepError "random-fu"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."logfloat" or (errorHandler.buildDepError "logfloat"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }