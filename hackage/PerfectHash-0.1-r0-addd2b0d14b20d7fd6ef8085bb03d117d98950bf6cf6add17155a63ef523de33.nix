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
      specVersion = "1.2";
      identifier = { name = "PerfectHash"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mark Wotton <mwotton@gmail.com>";
      author = "Mark Wotton <mwotton@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A perfect hashing library for mapping bytestrings to values.";
      description = "A perfect hashing library for mapping bytestrings to values.\nInsertion is not supported (by design): this is just a binding\nto the C-based CMPH library (http://cmph.sf.net). Only fromList\nand lookup operations are supported, but in many circumstances\nthis is all that's required.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."digest" or (errorHandler.buildDepError "digest"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        libs = [ (pkgs."cmph" or (errorHandler.sysDepError "cmph")) ];
        buildable = true;
      };
      exes = {
        "benchmark" = {
          libs = [ (pkgs."cmph" or (errorHandler.sysDepError "cmph")) ];
          buildable = true;
        };
        "benchmark_trie" = {
          depends = [
            (hsPkgs."bytestring-trie" or (errorHandler.buildDepError "bytestring-trie"))
          ];
          libs = [ (pkgs."cmph" or (errorHandler.sysDepError "cmph")) ];
          buildable = true;
        };
        "test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          ];
          libs = [ (pkgs."cmph" or (errorHandler.sysDepError "cmph")) ];
          buildable = true;
        };
      };
    };
  }