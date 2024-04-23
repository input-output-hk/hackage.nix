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
      identifier = { name = "text-trie"; version = "0.2.5.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2008--2019 wren gayle romano, 2019 michael j. klein";
      maintainer = "lambdamichael@gmail.com";
      author = "wren gayle romano, michael j. klein";
      homepage = "http://github.com/michaeljklein/text-trie";
      url = "";
      synopsis = "An efficient finite map from Text to values, based on bytestring-trie.";
      description = "An efficient finite map from Text to values, based on bytestring-trie.\n\nThe implementation is based on big-endian patricia\ntrees, like \"Data.IntMap\". We first trie on the\nelements of \"Data.ByteString\" and then trie on the\nbig-endian bit representation of those elements.\nPatricia trees have efficient algorithms for union\nand other merging operations, but they're also quick\nfor lookups and insertions.\n\nIf you are only interested in being able to associate\nstrings to values, then you may prefer the @hashmap@\npackage which is faster for those only needing a\nmap-like structure. This package is intended for\nthose who need the extra capabilities that a trie-like\nstructure can offer (e.g., structure sharing to\nreduce memory costs for highly redundant keys,\ntaking the submap of all keys with a given prefix,\ncontextual mapping, extracting the minimum and\nmaximum keys, etc.)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
        ];
        buildable = true;
      };
      tests = {
        "test-text-trie" = {
          depends = [
            (hsPkgs."text-trie" or (errorHandler.buildDepError "text-trie"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."microbench" or (errorHandler.buildDepError "microbench"))
            (hsPkgs."bytestring-trie" or (errorHandler.buildDepError "bytestring-trie"))
            (hsPkgs."silently" or (errorHandler.buildDepError "silently"))
          ];
          buildable = true;
        };
      };
    };
  }