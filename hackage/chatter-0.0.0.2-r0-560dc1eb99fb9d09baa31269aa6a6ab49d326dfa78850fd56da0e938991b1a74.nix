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
        version = "0.0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "creswick@gmail.com";
      author = "Rogan Creswick";
      homepage = "http://github.com/creswick/chatter";
      url = "";
      synopsis = "A library of simple NLP algorithms.";
      description = "chatter is a collection of simple Natural Language\nProcessing algorithms.\n\nChatter supports:\n\n* Part of speech tagging with Averaged\nPerceptrons. Based on the Python implementation\nby Matthew Honnibal:\n(<http://honnibal.wordpress.com/2013/09/11/a-good-part-of-speechpos-tagger-in-about-200-lines-of-python/>) See 'NLP.POS' for the details of part-of-speech tagging with chatter.\n\n* Document similarity; A cosine-based similarity measure, and TF-IDF calculations,\nare available in the 'NLP.Similarity.VectorSim' module.";
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
          (hsPkgs.zlib)
          (hsPkgs.filepath)
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
        "bench" = {
          depends  = [
            (hsPkgs.chatter)
            (hsPkgs.criterion)
            (hsPkgs.filepath)
            (hsPkgs.text)
            (hsPkgs.base)
            (hsPkgs.split)
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
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-skip)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.QuickCheck)
            (hsPkgs.filepath)
            (hsPkgs.cereal)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }