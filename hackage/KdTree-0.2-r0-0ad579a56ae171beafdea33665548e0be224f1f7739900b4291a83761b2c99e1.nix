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
      specVersion = "1.6";
      identifier = { name = "KdTree"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2011, Issac Trotts";
      maintainer = "issac.trotts@gmail.com";
      author = "Issac Trotts";
      homepage = "https://github.com/ijt/kdtree";
      url = "";
      synopsis = "KdTree, for efficient search in K-dimensional point clouds.";
      description = "This is a simple library for k-d trees in Haskell. It enables efficient\nsearching through collections of points in O(log N) time on average,\nusing the nearestNeighbor function.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      exes = {
        "KdTreeTest" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }