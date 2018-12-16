{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "chatter";
        version = "0.5.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "creswick@gmail.com";
      author = "Rogan Creswick";
      homepage = "http://github.com/creswick/chatter";
      url = "";
      synopsis = "A library of simple NLP algorithms.";
      description = "chatter is a collection of simple Natural Language\nProcessing algorithms.\n\nChatter supports:\n\n* Part of speech tagging with Averaged\nPerceptrons. Based on the Python implementation\nby Matthew Honnibal:\n(<http://honnibal.wordpress.com/2013/09/11/a-good-part-of-speechpos-tagger-in-about-200-lines-of-python/>) See 'NLP.POS' for the details of part-of-speech tagging with chatter.\n\n* Phrasal Chunking (also with an Averaged Perceptron) to identify arbitrary chunks based on training data.\n\n* Document similarity; A cosine-based similarity measure, and TF-IDF calculations,\nare available in the 'NLP.Similarity.VectorSim' module.\n\n* Information Extraction patterns via (<http://www.haskell.org/haskellwiki/Parsec/>) Parsec\n\nChatter comes with models for POS tagging and\nPhrasal Chunking that have been trained on the\nBrown corpus (POS only) and the Conll2000 corpus\n(POS and Chunking)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.random-shuffle)
          (hsPkgs.MonadRandom)
          (hsPkgs.cereal)
          (hsPkgs.fullstop)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.mbox)
          (hsPkgs.zlib)
          (hsPkgs.filepath)
          (hsPkgs.deepseq)
          (hsPkgs.tokenize)
          (hsPkgs.parsec)
          (hsPkgs.transformers)
          (hsPkgs.regex-tdfa)
          (hsPkgs.regex-tdfa-text)
          (hsPkgs.array)
          (hsPkgs.QuickCheck)
          (hsPkgs.quickcheck-instances)
        ];
      };
      exes = {
        "tagPOS" = {
          depends = [
            (hsPkgs.chatter)
            (hsPkgs.filepath)
            (hsPkgs.text)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
          ];
        };
        "trainPOS" = {
          depends = [
            (hsPkgs.chatter)
            (hsPkgs.filepath)
            (hsPkgs.text)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.containers)
          ];
        };
        "trainChunker" = {
          depends = [
            (hsPkgs.chatter)
            (hsPkgs.filepath)
            (hsPkgs.text)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.containers)
          ];
        };
        "trainNER" = {
          depends = [
            (hsPkgs.chatter)
            (hsPkgs.filepath)
            (hsPkgs.text)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.containers)
          ];
        };
        "eval" = {
          depends = [
            (hsPkgs.chatter)
            (hsPkgs.filepath)
            (hsPkgs.text)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.containers)
          ];
        };
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.chatter)
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.HUnit)
            (hsPkgs.parsec)
            (hsPkgs.tokenize)
            (hsPkgs.QuickCheck)
            (hsPkgs.filepath)
            (hsPkgs.cereal)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.containers)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-ant-xml)
          ];
        };
      };
    };
  }