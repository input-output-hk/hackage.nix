{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "KdTree";
          version = "0.1";
        };
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
        "KdTree" = {
          depends  = [ hsPkgs.base ];
        };
        exes = {
          "KdTreeTest" = {
            depends  = [
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }