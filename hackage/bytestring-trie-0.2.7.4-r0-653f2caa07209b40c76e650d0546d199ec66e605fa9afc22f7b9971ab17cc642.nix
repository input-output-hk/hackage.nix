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
      specVersion = "2.2";
      identifier = { name = "bytestring-trie"; version = "0.2.7.4"; };
      license = "BSD-3-Clause";
      copyright = "2008–2024 wren gayle romano";
      maintainer = "wren@cpan.org";
      author = "wren gayle romano";
      homepage = "https://wrengr.org/software/hackage.html";
      url = "";
      synopsis = "An efficient finite map from bytestrings to values.";
      description = "An efficient finite map from bytestrings to values.\n\nThe implementation is based on big-endian patricia trees, like\n\"Data.IntMap\".  We first trie on the elements of \"Data.ByteString\"\nand then trie on the big-endian bit representation of those\nelements.  Patricia trees have efficient algorithms for union\nand other merging operations, but they're also quick for lookups\nand insertions.\n\nIf you are only interested in being able to associate strings\nto values, then you may prefer the @hashmap@ package which is\nfaster for those only needing a map-like structure.  This package\nis intended for those who need the extra capabilities that a\ntrie-like structure can offer (e.g., structure sharing to reduce\nmemory costs for highly redundant keys, taking the submap of\nall keys with a given prefix, contextual mapping, extracting\nthe minimum and maximum keys, etc.)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
        ];
        buildable = true;
      };
      tests = {
        "test-all" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."bytestring-trie" or (errorHandler.buildDepError "bytestring-trie"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-smallcheck" or (errorHandler.buildDepError "tasty-smallcheck"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench-Regression" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."bytestring-trie" or (errorHandler.buildDepError "bytestring-trie"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "bench-Foldable" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."bytestring-trie" or (errorHandler.buildDepError "bytestring-trie"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "bench-MatchOne" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."bytestring-trie" or (errorHandler.buildDepError "bytestring-trie"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "bench-UnionWith" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."bytestring-trie" or (errorHandler.buildDepError "bytestring-trie"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
    };
  }