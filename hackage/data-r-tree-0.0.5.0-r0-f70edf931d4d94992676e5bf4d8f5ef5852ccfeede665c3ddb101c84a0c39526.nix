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
    flags = { test-strict = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "data-r-tree"; version = "0.0.5.0"; };
      license = "MIT";
      copyright = "Sebastian Philipp, Birte Wagner";
      maintainer = "sebastian@spawnhost.de";
      author = "Sebastian Philipp, Birte Wagner";
      homepage = "https://github.com/sebastian-philipp/r-tree";
      url = "";
      synopsis = "R-Tree is a spatial data structure similar to Quadtrees or B-Trees.";
      description = "R-Tree is a spatial data structure similar to Quadtrees or B-Trees.\nAn R-Tree is a balanced tree and optimized for lookups. This implemetation useses an R-Tree to privide\na map to arbitrary values.";
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
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        "strict" = {
          depends = (pkgs.lib).optionals (!(!flags.test-strict)) [
            (hsPkgs."data-r-tree" or (errorHandler.buildDepError "data-r-tree"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."ghc-heap-view" or (errorHandler.buildDepError "ghc-heap-view"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            ];
          buildable = if !flags.test-strict then false else true;
          };
        };
      };
    }