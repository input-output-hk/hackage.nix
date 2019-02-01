{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { buildexamples = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "lapack"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://hub.darcs.net/thielema/lapack/";
      url = "";
      synopsis = "Numerical Linear Algebra using LAPACK";
      description = "This is a high-level interface to LAPACK.\nIt provides solvers for simultaneous linear equations,\nlinear least-squares problems, eigenvalue and singular value problems\nfor matrices with certain kinds of structures.\n\nFeatures:\n\n* Based on @comfort-array@:\nAllows to precisely express one-column or one-row matrices,\nas well as dense, square, triangular, banded, symmetric and block matrices.\n\n* Support all data types that are supported by LAPACK,\ni.e. Float, Double, Complex Float, Complex Double\n\n* No need for c2hs, hsc, Template Haskell or C helper functions\n\n* Dependency only on BLAS and LAPACK, no GSL\n\n* Works with matrices and vectors with zero dimensions.\n\n* Separate formatting operator @(##)@:\nWorks better for tuples of matrices and vectors than 'show'.\n'Show' is used for code one-liners\nthat can be copied back into Haskell modules.\n\nSee also: @hmatrix@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.lapack-ffi)
          (hsPkgs.blas-ffi)
          (hsPkgs.netlib-ffi)
          (hsPkgs.comfort-array)
          (hsPkgs.guarded-allocation)
          (hsPkgs.boxes)
          (hsPkgs.deepseq)
          (hsPkgs.lazyio)
          (hsPkgs.transformers)
          (hsPkgs.tfp)
          (hsPkgs.fixed-length)
          (hsPkgs.non-empty)
          (hsPkgs.utility-ht)
          (hsPkgs.base)
          ];
        };
      exes = {
        "lapack-economic" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs.lapack)
            (hsPkgs.comfort-array)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
            ];
          };
        };
      tests = {
        "lapack-test" = {
          depends = [
            (hsPkgs.lapack)
            (hsPkgs.netlib-ffi)
            (hsPkgs.tfp)
            (hsPkgs.comfort-array)
            (hsPkgs.data-ref)
            (hsPkgs.unique-logic-tf)
            (hsPkgs.random)
            (hsPkgs.quickcheck-transformer)
            (hsPkgs.QuickCheck)
            (hsPkgs.ChasingBottoms)
            (hsPkgs.transformers)
            (hsPkgs.semigroups)
            (hsPkgs.non-empty)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
            ];
          };
        };
      };
    }