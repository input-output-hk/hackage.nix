{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "kdt";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "Luis G. Torres, 2014";
        maintainer = "lgtorres42@gmail.com";
        author = "Luis G. Torres";
        homepage = "https://github.com/giogadi/kdt";
        url = "";
        synopsis = "Fast and flexible k-d trees for various types of point queries.";
        description = "This package includes static and dynamic versions of k-d trees,\nas well as \\\"Map\\\" variants that store data at each point in the\nk-d tree structure. Supports nearest neighbor,\nk nearest neighbors, points within a given radius, and points\nwithin a given range.\nTo learn to use this package, start with the documentation for\nthe \"Data.KdTree.Static\" module.";
        buildType = "Simple";
      };
      components = {
        kdt = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.QuickCheck
            hsPkgs.pqueue
            hsPkgs.deepseq-generics
          ];
        };
        tests = {
          KdTreeTest = {
            depends  = [
              hsPkgs.base
              hsPkgs.kdt
            ];
          };
        };
        benchmarks = {
          KDTBenchmark = {
            depends  = [
              hsPkgs.base
              hsPkgs.kdt
              hsPkgs.MonadRandom
              hsPkgs.mersenne-random-pure64
              hsPkgs.criterion
              hsPkgs.pqueue
            ];
          };
        };
      };
    }