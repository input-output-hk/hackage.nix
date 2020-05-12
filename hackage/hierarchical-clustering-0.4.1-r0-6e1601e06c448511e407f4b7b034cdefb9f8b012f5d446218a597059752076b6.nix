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
      specVersion = "1.8";
      identifier = { name = "hierarchical-clustering"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "felipe.lessa@gmail.com";
      author = "Felipe Almeida Lessa";
      homepage = "";
      url = "";
      synopsis = "Fast algorithms for single, average/UPGMA and complete linkage clustering.";
      description = "This package provides a function to create a dendrogram from a\nlist of items and a distance function between them.  Initially\na singleton cluster is created for each item, and then new,\nbigger clusters are created by merging the two clusters with\nleast distance between them.  The distance between two clusters\nis calculated according to the linkage type.  The dendrogram\nrepresents not only the clusters but also the order on which\nthey were created.\n\nThis package has many implementations with different\nperformance characteristics.  There are SLINK and CLINK\nalgorithm implementations that are optimal in both space and\ntime.  There are also naive implementations using a distance\nmatrix.  Using the @dendrogram@ function from\n@Data.Clustering.Hierarchical@ automatically chooses the best\nimplementation we have.\n\nChanges in version 0.4:\n\n* Specialize the distance type to Double for efficiency reasons.\nIt's uncommon to use distances other than Double.\n\n* Implement SLINK and CLINK.  These are optimal algorithms in\nboth space and time for single and complete linkage,\nrespectively, running in /O(n^2)/ time and /O(n)/ space.\n\n* Reorganized internal implementation.\n\n* Some performance improvements for the naive implementation.\n\n* Better test coverage.  Also, performance improvements for the\ntest suite, now running in 3 seconds (instead of one minute).\n\nChanges in version 0.3.1.2 (version 0.3.1.1 was skipped):\n\n* Added tests for many things.  Use @cabal test@ =).\n\nChanges in version 0.3.1:\n\n* Works with containers 0.4 (thanks, Doug Beardsley).\n\n* Removed some internal unnecessary overheads and added some strictness.\n\nChanges in version 0.3.0.1:\n\n* Listed changes of unreleased version 0.2.\n\nChanges in version 0.3:\n\n* Added function @cutAt@.\n\n* Fixed complexity in Haddock comments.\n\nChanges in version 0.2:\n\n* Added function @elements@.\n\n* Added separate functions for each linkage type.  This may be\nuseful if you want to create a dendrogram and your distance\ndata type isn't an instance of @Floating@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "runtests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."hierarchical-clustering" or (errorHandler.buildDepError "hierarchical-clustering"))
            ];
          buildable = true;
          };
        };
      };
    }