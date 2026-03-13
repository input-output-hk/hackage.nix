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
      identifier = { name = "dunning-t-digest"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2025 Nadia Yvette Chambers";
      maintainer = "nadia.yvette.chambers@gmail.com";
      author = "Nadia Yvette Chambers";
      homepage = "";
      url = "";
      synopsis = "Dunning t-digest for online quantile estimation";
      description = "A pure functional implementation of the Dunning t-digest data structure\n(merging digest variant, K1 arcsine scale function) using finger trees\nwith four-component monoidal measures for O(log n) insertion and queries.\n.\nAlso provides a mutable variant backed by mutable vectors in the ST monad.\n.\nThe t-digest provides streaming, mergeable, memory-bounded approximation\nof quantile (percentile) queries with high accuracy in the tails.\n.\nFeatures:\n.\n* O(log n) insertion via split-by-mean (no buffering needed)\n* O(log n) quantile queries via split-by-cumulative-weight\n* O(log n) CDF queries via split-by-mean\n* O(δ log n) compression via split-based greedy merge\n* O(1) total weight, centroid count, and chunk mean computation\n* Mutable variant with O(1) amortized insertion via buffering";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."fingertree" or (errorHandler.buildDepError "fingertree"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      exes = {
        "dunning-t-digest-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dunning-t-digest" or (errorHandler.buildDepError "dunning-t-digest"))
          ];
          buildable = true;
        };
        "dunning-t-digest-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dunning-t-digest" or (errorHandler.buildDepError "dunning-t-digest"))
          ];
          buildable = true;
        };
      };
    };
  }