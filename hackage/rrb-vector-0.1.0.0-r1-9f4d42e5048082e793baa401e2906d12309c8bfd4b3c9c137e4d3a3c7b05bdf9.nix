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
      specVersion = "2.0";
      identifier = { name = "rrb-vector"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2021 konsumlamm";
      maintainer = "konsumlamm@gmail.com";
      author = "konsumlamm";
      homepage = "https://github.com/konsumlamm/rrb-vector";
      url = "";
      synopsis = "Efficient RRB-Vectors";
      description = "An RRB-Vector is an efficient sequence data structure.\nIt supports fast indexing, iteration, concatenation and splitting.\n\n== Comparison with [Data.Sequence](https://hackage.haskell.org/package/containers/docs/Data-Sequence.html)\n\n@Seq a@ is a container with a very similar API. RRB-Vectors are generally faster for indexing and iteration,\nwhile sequences are faster for access to the front/back (amortized \\(O(1)\\)).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."indexed-traversable" or (errorHandler.buildDepError "indexed-traversable"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."rrb-vector" or (errorHandler.buildDepError "rrb-vector"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "rrb-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
            (hsPkgs."rrb-vector" or (errorHandler.buildDepError "rrb-vector"))
          ];
          buildable = true;
        };
        "traverse" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
            (hsPkgs."rrb-vector" or (errorHandler.buildDepError "rrb-vector"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          ];
          buildable = true;
        };
      };
    };
  }