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
    flags = { tests = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "seqloc-datafiles"; version = "0.4"; };
      license = "MIT";
      copyright = "";
      maintainer = "nick@ingolia.org";
      author = "Nick Ingolia";
      homepage = "http://www.ingolia-lab.org/seqloc-datafiles-tutorial.html";
      url = "";
      synopsis = "Read and write BED and GTF format genome annotations";
      description = "Read and write BED and GTF format genome annotations";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."iteratee" or (errorHandler.buildDepError "iteratee"))
          (hsPkgs."seqloc" or (errorHandler.buildDepError "seqloc"))
          (hsPkgs."biocore" or (errorHandler.buildDepError "biocore"))
          ];
        buildable = true;
        };
      exes = {
        "gtf-to-bed" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."iteratee" or (errorHandler.buildDepError "iteratee"))
            (hsPkgs."seqloc" or (errorHandler.buildDepError "seqloc"))
            (hsPkgs."biocore" or (errorHandler.buildDepError "biocore"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."monads-tf" or (errorHandler.buildDepError "monads-tf"))
            ];
          buildable = true;
          };
        "bed-to-gtf" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."iteratee" or (errorHandler.buildDepError "iteratee"))
            (hsPkgs."seqloc" or (errorHandler.buildDepError "seqloc"))
            (hsPkgs."biocore" or (errorHandler.buildDepError "biocore"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."monads-tf" or (errorHandler.buildDepError "monads-tf"))
            ];
          buildable = true;
          };
        "gtf-introns" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."iteratee" or (errorHandler.buildDepError "iteratee"))
            (hsPkgs."seqloc" or (errorHandler.buildDepError "seqloc"))
            (hsPkgs."biocore" or (errorHandler.buildDepError "biocore"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."cmdtheline" or (errorHandler.buildDepError "cmdtheline"))
            ];
          buildable = true;
          };
        "bed-subregion" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."iteratee" or (errorHandler.buildDepError "iteratee"))
            (hsPkgs."seqloc" or (errorHandler.buildDepError "seqloc"))
            (hsPkgs."biocore" or (errorHandler.buildDepError "biocore"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."monads-tf" or (errorHandler.buildDepError "monads-tf"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            ];
          buildable = true;
          };
        "test-gtf" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."iteratee" or (errorHandler.buildDepError "iteratee"))
            (hsPkgs."seqloc" or (errorHandler.buildDepError "seqloc"))
            (hsPkgs."biocore" or (errorHandler.buildDepError "biocore"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = if !flags.tests then false else true;
          };
        "test-bed" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."iteratee" or (errorHandler.buildDepError "iteratee"))
            (hsPkgs."seqloc" or (errorHandler.buildDepError "seqloc"))
            (hsPkgs."biocore" or (errorHandler.buildDepError "biocore"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = if !flags.tests then false else true;
          };
        "genome-to-trx" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."iteratee" or (errorHandler.buildDepError "iteratee"))
            (hsPkgs."seqloc" or (errorHandler.buildDepError "seqloc"))
            (hsPkgs."biocore" or (errorHandler.buildDepError "biocore"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            ];
          buildable = false;
          };
        };
      };
    }