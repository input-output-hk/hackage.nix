{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "KdTree"; version = "0.2.2.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2011, Issac Trotts & Contributors";
      maintainer = "jesse.kempf@binarysunrise.io";
      author = "Issac Trotts";
      homepage = "https://github.com/binarysunrise-io/kdtree";
      url = "";
      synopsis = "KdTree, for efficient search in K-dimensional point clouds.";
      description = "This is a simple library for k-d trees in Haskell. It enables\nsearching through collections of points in O(log N) average time,\nusing the nearestNeighbor function.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.QuickCheck) ]; };
      tests = {
        "KdTreeTest" = {
          depends = [ (hsPkgs.base) (hsPkgs.KdTree) (hsPkgs.QuickCheck) ];
          };
        };
      };
    }