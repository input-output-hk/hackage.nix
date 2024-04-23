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
      identifier = { name = "data-r-tree"; version = "0.0.1.0"; };
      license = "MIT";
      copyright = "Sebastian Philipp, Birte Wagner";
      maintainer = "sebastian@spawnhost.de";
      author = "Sebastian Philipp, Birte Wagner";
      homepage = "https://github.com/sebastian-philipp/r-tree";
      url = "";
      synopsis = "R-Tree is a spartial data structure similar to Quadtrees or B-Trees.";
      description = "R-Tree is a spartial data structure similar to Quadtrees or B-Trees.\nAn R-Tree is a balanced tree and optimized for lookups. This implemetation useses an R-Tree to privide\na map to arbitrary values.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
        ];
        buildable = true;
      };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs."data-r-tree" or (errorHandler.buildDepError "data-r-tree"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."gnuplot" or (errorHandler.buildDepError "gnuplot"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
      };
    };
  }