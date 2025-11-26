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
      specVersion = "3.4";
      identifier = { name = "bloomfilter-blocked"; version = "0.1.0.1"; };
      license = "Apache-2.0";
      copyright = "(c) 2023-2025 Cardano Development Foundation\n(c) 2025 Well-Typed LLP";
      maintainer = "duncan@well-typed.com, joris@well-typed.com";
      author = "Duncan Coutts, Joris Dral, Matthias Heinzel, Wen Kokke";
      homepage = "";
      url = "";
      synopsis = "Fast, compact Bloom filters";
      description = "This library provides [Bloom filters](https://en.wikipedia.org/wiki/Bloom_filter).\nA Bloom filter is a compact but probabilistic set-like data structure,\nsupporting fast insert and membership operations.\n\nBloom filters are probabilistic in the sense that when querying for set\nmembership, they can (with some probability) falsely report that an element\nis present when it is not present. On the other hand it will /never/ falsely\nreport that an element is not present when in fact it is present. That is, it\ncan have false positives but not false negatives. The false positive rate\n(FPR) can be adjusted.\n\nBloom filters are compact, needing only a few /bits/ per element. For example\n10 bits per element is enough for a false positive rate (FPR) of 1%, and 15\nbits for 0.1%.\n\nThe library includes two implementations of Bloom filters:\n\n[classic]: in \"Data.BloomFilter.Classic\":\n  a default implementation that is faithful to the classical description of a\n  Bloom filter data structure.\n\n[block-structured]: in \"Data.BloomFilter.Blocked\":\n  a cache optimised representation that is faster, at the cost of needing a\n  few more bits per element to achieve a target FPR.\n\nFeatures of the library:\n\n * Fast. See the benchmark results.\n * Compact. It uses optimal sized bit arrays: no bigger than necessary.\n * Faster still: the block-structured Bloom filters are even faster, at the\n   expense of needing more bits per entry.\n * Supports very large Bloom filters, bigger than 2^32 bits.\n * Simple API for specifying the size of Bloom filters.\n * Support for hash salting, for using Bloom filters with untrusted inputs.\n * Serialisation support with format version tracking.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bloomfilter-blocked".components.sublibs.xxhash or (errorHandler.buildDepError "bloomfilter-blocked:xxhash"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
        ];
        buildable = true;
      };
      sublibs = {
        "xxhash" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          ];
          buildable = true;
        };
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bloomfilter-blocked" or (errorHandler.buildDepError "bloomfilter-blocked"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
        "fpr-calc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bloomfilter-blocked" or (errorHandler.buildDepError "bloomfilter-blocked"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."regression-simple" or (errorHandler.buildDepError "regression-simple"))
          ];
          buildable = true;
        };
        "spell" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bloomfilter-blocked" or (errorHandler.buildDepError "bloomfilter-blocked"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
          buildable = true;
        };
        "xxhash-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bloomfilter-blocked".components.sublibs.xxhash or (errorHandler.buildDepError "bloomfilter-blocked:xxhash"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bloomfilter-blocked" or (errorHandler.buildDepError "bloomfilter-blocked"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
      };
    };
  }