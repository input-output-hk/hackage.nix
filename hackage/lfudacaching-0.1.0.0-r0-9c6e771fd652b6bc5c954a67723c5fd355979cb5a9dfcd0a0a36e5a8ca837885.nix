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
      specVersion = "3.0";
      identifier = { name = "lfudacaching"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "2026";
      maintainer = "philippedev101@gmail.com";
      author = "philippedev101";
      homepage = "https://github.com/philippedev101/lfudacache#readme";
      url = "";
      synopsis = "Pure LFUDA, GDSF, and LFU cache implementations";
      description = "Pure, immutable cache with three eviction policies:\n.\n* __LFUDA__ — Least Frequently Used with Dynamic Aging\n* __GDSF__ — Greedy Dual-Size Frequency\n* __LFU__ — Least Frequently Used\n.\nAll operations are /O(log n)/ in the number of cached entries, backed by a\nhash-priority search queue.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."psqueues" or (errorHandler.buildDepError "psqueues"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
        ];
        buildable = true;
      };
      exes = {
        "lfuda-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lfudacaching" or (errorHandler.buildDepError "lfudacaching"))
          ];
          buildable = true;
        };
      };
      tests = {
        "lfuda-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lfudacaching" or (errorHandler.buildDepError "lfudacaching"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "lfuda-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lfudacaching" or (errorHandler.buildDepError "lfudacaching"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
          ];
          buildable = true;
        };
      };
    };
  }