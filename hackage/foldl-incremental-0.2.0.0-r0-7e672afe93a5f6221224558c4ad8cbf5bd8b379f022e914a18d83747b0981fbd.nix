{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "foldl-incremental";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "Copyright (c) Tony Day 2014";
      maintainer = "tonyday567@gmail.com";
      author = "Tony Day";
      homepage = "https://github.com/tonyday567/foldl-incremental";
      url = "";
      synopsis = "incremental folds";
      description = "Incremental statistical folds based upon the\n<https://hackage.haskell.org/package/foldl foldl> libray.  An incremental statistical fold can be thought of as\nexponentially-weighting statistics designed to be efficient computations over\na Foldable.\nIt supplies \"incrementalize\" which turns any unary function into a\n\"Fold\".  As a reference, `incrementalize id` is an exponentially-weighted moving average.";
      buildType = "Simple";
    };
    components = {
      "foldl-incremental" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.foldl)
          (hsPkgs.histogram-fill)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.foldl-incremental)
            (hsPkgs.QuickCheck)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.foldl)
            (hsPkgs.histogram-fill)
            (hsPkgs.mwc-random)
            (hsPkgs.pipes)
            (hsPkgs.vector)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.foldl-incremental)
            (hsPkgs.containers)
            (hsPkgs.foldl)
          ];
        };
      };
    };
  }