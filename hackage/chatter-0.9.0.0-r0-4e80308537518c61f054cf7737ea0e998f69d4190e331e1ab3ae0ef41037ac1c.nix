let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "chatter"; version = "0.9.0.0"; };
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."random-shuffle" or (buildDepError "random-shuffle"))
          (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."cereal-text" or (buildDepError "cereal-text"))
          (hsPkgs."fullstop" or (buildDepError "fullstop"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."mbox" or (buildDepError "mbox"))
          (hsPkgs."zlib" or (buildDepError "zlib"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."tokenize" or (buildDepError "tokenize"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
          (hsPkgs."regex-tdfa-text" or (buildDepError "regex-tdfa-text"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          ];
        };
      exes = {
        "tagPOS" = {
          depends = [
            (hsPkgs."chatter" or (buildDepError "chatter"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            ];
          };
        "trainPOS" = {
          depends = [
            (hsPkgs."chatter" or (buildDepError "chatter"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          };
        "trainChunker" = {
          depends = [
            (hsPkgs."chatter" or (buildDepError "chatter"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          };
        "trainNER" = {
          depends = [
            (hsPkgs."chatter" or (buildDepError "chatter"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          };
        "eval" = {
          depends = [
            (hsPkgs."chatter" or (buildDepError "chatter"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."chatter" or (buildDepError "chatter"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."tokenize" or (buildDepError "tokenize"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-ant-xml" or (buildDepError "tasty-ant-xml"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            ];
          };
        };
      };
    }