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
      identifier = { name = "chatter"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "creswick@gmail.com";
      author = "Rogan Creswick";
      homepage = "http://github.com/creswick/chatter";
      url = "";
      synopsis = "A library of simple NLP algorithms.";
      description = "chatter is a collection of simple Natural Language\nProcessing algorithms.\n\nChatter supports:\n\n* Part of speech tagging with Averaged\nPerceptrons. Based on the Python implementation\nby Matthew Honnibal:\n(<http://honnibal.wordpress.com/2013/09/11/a-good-part-of-speechpos-tagger-in-about-200-lines-of-python/>) See 'NLP.POS' for the details of part-of-speech tagging with chatter.\n\n* Document similarity; A cosine-based similarity measure, and TF-IDF calculations,\nare available in the 'NLP.Similarity.VectorSim' module.\n\n* Information Extraction patterns via (<http://www.haskell.org/haskellwiki/Parsec/>) Parsec";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."random-shuffle" or (errorHandler.buildDepError "random-shuffle"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."fullstop" or (errorHandler.buildDepError "fullstop"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."mbox" or (errorHandler.buildDepError "mbox"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."tokenize" or (errorHandler.buildDepError "tokenize"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."regex-tdfa-text" or (errorHandler.buildDepError "regex-tdfa-text"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
        ];
        buildable = true;
      };
      exes = {
        "tag" = {
          depends = [
            (hsPkgs."chatter" or (errorHandler.buildDepError "chatter"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          ];
          buildable = true;
        };
        "train" = {
          depends = [
            (hsPkgs."chatter" or (errorHandler.buildDepError "chatter"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
        "eval" = {
          depends = [
            (hsPkgs."chatter" or (errorHandler.buildDepError "chatter"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."chatter" or (errorHandler.buildDepError "chatter"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-skip" or (errorHandler.buildDepError "test-framework-skip"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."tokenize" or (errorHandler.buildDepError "tokenize"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."chatter" or (errorHandler.buildDepError "chatter"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."tokenize" or (errorHandler.buildDepError "tokenize"))
          ];
          buildable = true;
        };
      };
    };
  }