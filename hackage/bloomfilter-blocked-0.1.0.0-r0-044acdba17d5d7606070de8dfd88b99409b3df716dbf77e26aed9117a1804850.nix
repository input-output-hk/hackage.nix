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
      identifier = { name = "bloomfilter-blocked"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "(c) 2023-2025 Cardano Development Foundation";
      maintainer = "duncan@well-typed.com, joris@well-typed.com";
      author = "Duncan Coutts, Joris Dral, Matthias Heinzel, Wolfgang Jeltsch, Wen Kokke, and Alex Washburn";
      homepage = "";
      url = "";
      synopsis = "Classic and block-style bloom filters";
      description = "@bloomfilter-blocked@ is a Haskell library providing multiple fast and efficient\nimplementations of [bloom filters](https://en.wikipedia.org/wiki/Bloom_filter).\nIt is a full rewrite of the\n[bloomfilter](https://hackage.haskell.org/package/bloomfilter) package,\noriginally authored by Bryan O'Sullivan <bos@serpentine.com>.\n\nThe library includes two implementations of bloom filters: classic, and blocked.\n\n* /Classic/ bloom filters, found in the \"Data.BloomFilter.Classic\" module: a\n  default implementation that is faithful to the canonical description of a\n  bloom filter data structure.\n\n* /Blocked/ floom filters, found in the \"Data.BloomFilter.Blocked\" module: an\n  implementation that optimises the memory layout of a classic bloom filter for\n  speed (cheaper CPU cache reads), at the cost of a slightly higher FPR for the\n  same amount of assigned memory.";
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