{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "kdt";
        version = "0.2.2";
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
      "kdt" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.pqueue)
          (hsPkgs.deepseq-generics)
        ];
      };
      tests = {
        "StaticTest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.kdt)
            (hsPkgs.QuickCheck)
            (hsPkgs.deepseq)
            (hsPkgs.deepseq-generics)
          ];
        };
        "DynamicTest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.kdt)
            (hsPkgs.QuickCheck)
            (hsPkgs.deepseq)
            (hsPkgs.deepseq-generics)
          ];
        };
      };
      benchmarks = {
        "KDTBenchmark" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.kdt)
            (hsPkgs.MonadRandom)
            (hsPkgs.mersenne-random-pure64)
            (hsPkgs.criterion)
            (hsPkgs.pqueue)
            (hsPkgs.QuickCheck)
            (hsPkgs.deepseq)
            (hsPkgs.deepseq-generics)
          ];
        };
      };
    };
  }