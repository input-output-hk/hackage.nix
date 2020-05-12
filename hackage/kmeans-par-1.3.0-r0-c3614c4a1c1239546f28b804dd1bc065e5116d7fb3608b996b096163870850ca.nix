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
      identifier = { name = "kmeans-par"; version = "1.3.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "me@vikramverma.com";
      author = "vi";
      homepage = "";
      url = "";
      synopsis = "Sequential and parallel implementations of Lloyd's algorithm.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."metric" or (errorHandler.buildDepError "metric"))
          ];
        buildable = true;
        };
      benchmarks = {
        "kmeans-benchmark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."normaldistribution" or (errorHandler.buildDepError "normaldistribution"))
            (hsPkgs."kmeans-par" or (errorHandler.buildDepError "kmeans-par"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."metric" or (errorHandler.buildDepError "metric"))
            ];
          buildable = true;
          };
        };
      };
    }