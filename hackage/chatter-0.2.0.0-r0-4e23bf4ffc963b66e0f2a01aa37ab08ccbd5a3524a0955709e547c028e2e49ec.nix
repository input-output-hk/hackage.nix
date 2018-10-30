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
        version = "0.2.0.0";
      };
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
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.safe)
          (hsPkgs.random-shuffle)
          (hsPkgs.MonadRandom)
          (hsPkgs.cereal)
          (hsPkgs.fullstop)
          (hsPkgs.split)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.mbox)
          (hsPkgs.zlib)
          (hsPkgs.filepath)
          (hsPkgs.ghc-prim)
          (hsPkgs.deepseq)
          (hsPkgs.tokenize)
          (hsPkgs.parsec)
          (hsPkgs.transformers)
          (hsPkgs.regex-base)
          (hsPkgs.regex-tdfa)
          (hsPkgs.regex-tdfa-text)
          (hsPkgs.array)
        ];
      };
      exes = {
        "tag" = {
          depends  = [
            (hsPkgs.chatter)
            (hsPkgs.filepath)
            (hsPkgs.text)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
          ];
        };
        "train" = {
          depends  = [
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
          depends  = [
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
          depends  = [
            (hsPkgs.chatter)
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.HUnit)
            (hsPkgs.parsec)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-skip)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.tokenize)
            (hsPkgs.QuickCheck)
            (hsPkgs.filepath)
            (hsPkgs.cereal)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.containers)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.chatter)
            (hsPkgs.criterion)
            (hsPkgs.filepath)
            (hsPkgs.text)
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.split)
            (hsPkgs.tokenize)
          ];
        };
      };
    };
  }