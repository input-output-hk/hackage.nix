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
        name = "foldl-incremental";
        version = "0.1.1.0";
      };
      license = "MIT";
      copyright = "Copyright (c) Tony Day 2014";
      maintainer = "tonyday567@gmail.com";
      author = "Tony Day";
      homepage = "https://github.com/tonyday567/foldl-incremental";
      url = "";
      synopsis = "incremental folds";
      description = "This library provides incremental statistical folds based upon the\nfoldl libray.  An incremental statistical fold can be thought of as\nexponentially-weighting statistics designed to be efficient computations over\na Foldable.\nIt supplies \"incrementalize\" which turns any unary function into a\n\"Fold\".  As a reference, \\\"incrementalize id\\\" is an exponentially-weighted moving average.";
      buildType = "Simple";
    };
    components = {
      "foldl-incremental" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.foldl)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.foldl)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.foldl-incremental)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.foldl)
            (hsPkgs.hastache)
            (hsPkgs.criterion)
            (hsPkgs.foldl-incremental)
          ];
        };
      };
    };
  }