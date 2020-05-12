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
      identifier = { name = "clustering"; version = "0.3.1"; };
      license = "MIT";
      copyright = "(c) 2015 Kai Zhang";
      maintainer = "kai@kzhang.org";
      author = "Kai Zhang";
      homepage = "";
      url = "";
      synopsis = "High performance clustering algorithms";
      description = "Following clutering methods are included in this library:\n\n1 Agglomerative hierarchical clustering. Complete linkage O(n^2),\nSingle linkage O(n^2), Average linkage O(n^2),\nWeighted linkage O(n^2), Ward's linkage O(n^2).\n\n2 KMeans clustering.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."matrices" or (errorHandler.buildDepError "matrices"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."matrices" or (errorHandler.buildDepError "matrices"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."clustering" or (errorHandler.buildDepError "clustering"))
            (hsPkgs."hierarchical-clustering" or (errorHandler.buildDepError "hierarchical-clustering"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."Rlang-QQ" or (errorHandler.buildDepError "Rlang-QQ"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."clustering" or (errorHandler.buildDepError "clustering"))
            (hsPkgs."hierarchical-clustering" or (errorHandler.buildDepError "hierarchical-clustering"))
            (hsPkgs."matrices" or (errorHandler.buildDepError "matrices"))
            ];
          buildable = true;
          };
        };
      };
    }