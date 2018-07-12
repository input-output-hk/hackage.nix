{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "foldl-statistics";
          version = "0.1.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Data61 (CSIRO)";
        maintainer = "Alex.Mason@data61.csiro.au";
        author = "Alex Mason";
        homepage = "http://github.com/Data61/foldl-statistics#readme";
        url = "";
        synopsis = "Statistical functions from the statistics package implemented as\nFolds.";
        description = "The use of this package allows statistics to be computed using at most two\npasses over the input data, one to compute a mean and one to compute a further\nstatistic such as variance and /n/th central moments. All algorithms are the\nobvious implementation of Bryan O\\'Sullivan\\'s\n<https://hackage.haskell.org/package/statistics statistics> package imeplemented\nas `Fold's from the\n<https://hackage.haskell.org/package/foldl foldl> package.";
        buildType = "Simple";
      };
      components = {
        "foldl-statistics" = {
          depends  = [
            hsPkgs.base
            hsPkgs.foldl
            hsPkgs.math-functions
            hsPkgs.profunctors
            hsPkgs.semigroups
          ];
        };
        tests = {
          "foldl-statistics-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.foldl-statistics
              hsPkgs.foldl
              hsPkgs.statistics
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.vector
              hsPkgs.quickcheck-instances
              hsPkgs.profunctors
            ];
          };
        };
        benchmarks = {
          "bench-folds" = {
            depends  = [
              hsPkgs.base
              hsPkgs.foldl-statistics
              hsPkgs.criterion
              hsPkgs.vector
              hsPkgs.statistics
              hsPkgs.mwc-random
              hsPkgs.foldl
            ];
          };
        };
      };
    }