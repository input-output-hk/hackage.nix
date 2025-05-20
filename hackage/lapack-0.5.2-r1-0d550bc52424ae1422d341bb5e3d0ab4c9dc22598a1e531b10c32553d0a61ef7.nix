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
    flags = { debug = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "lapack"; version = "0.5.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "https://hub.darcs.net/thielema/lapack/";
      url = "";
      synopsis = "Numerical Linear Algebra using LAPACK";
      description = "This is a high-level interface to LAPACK.\nIt provides solvers for simultaneous linear equations,\nlinear least-squares problems, eigenvalue and singular value problems\nfor matrices with certain kinds of structures.\n\nFeatures:\n\n* Based on @comfort-array@:\nAllows to precisely express one-column or one-row matrices,\nas well as dense, square, triangular, banded, symmetric, Hermitian,\nbanded Hermitian, blocked and LU or QR decomposed matrices.\n\n* Support all data types that are supported by LAPACK,\ni.e. Float, Double, Complex Float, Complex Double\n\n* No need for c2hs, hsc, Template Haskell or C helper functions\n\n* Dependency only on BLAS and LAPACK, no GSL\n\n* Works with matrices and vectors with zero dimensions.\nThis one is tricky and still leads to surprises\nsince different LAPACK implementations\nconsider different situations as corner cases.\n\n* No automatic (and dangerous) implicit expansion\nof singleton vectors or matrices.\nInstead there are special operators for scaling of vectors and matrices.\n\n* Separate formatting operator @(##)@:\nWorks better for tuples of matrices and vectors than 'show'.\n'Show' is used for code one-liners\nthat can be copied back into Haskell modules.\nSupport for nice formatting in HyperHaskell.\n\nSee also: @hmatrix@.\n\nFor examples see the @Example@ modules\nand the packages @sum-pyramid@, @wuerfelschlange@, @magico@,\n@linear-circuit@, @resistor-cube@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."comfort-blas" or (errorHandler.buildDepError "comfort-blas"))
          (hsPkgs."lapack-ffi" or (errorHandler.buildDepError "lapack-ffi"))
          (hsPkgs."blas-ffi" or (errorHandler.buildDepError "blas-ffi"))
          (hsPkgs."netlib-ffi" or (errorHandler.buildDepError "netlib-ffi"))
          (hsPkgs."comfort-array-shape" or (errorHandler.buildDepError "comfort-array-shape"))
          (hsPkgs."comfort-array" or (errorHandler.buildDepError "comfort-array"))
          (hsPkgs."guarded-allocation" or (errorHandler.buildDepError "guarded-allocation"))
          (hsPkgs."hyper" or (errorHandler.buildDepError "hyper"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."boxes" or (errorHandler.buildDepError "boxes"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."lazyio" or (errorHandler.buildDepError "lazyio"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."tfp" or (errorHandler.buildDepError "tfp"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."non-empty" or (errorHandler.buildDepError "non-empty"))
          (hsPkgs."Stream" or (errorHandler.buildDepError "Stream"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
      exes = {
        "lapack-debug" = {
          depends = pkgs.lib.optionals (flags.debug) [
            (hsPkgs."lapack" or (errorHandler.buildDepError "lapack"))
            (hsPkgs."comfort-array" or (errorHandler.buildDepError "comfort-array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.debug then true else false;
        };
      };
      tests = {
        "lapack-test" = {
          depends = [
            (hsPkgs."lapack" or (errorHandler.buildDepError "lapack"))
            (hsPkgs."netlib-ffi" or (errorHandler.buildDepError "netlib-ffi"))
            (hsPkgs."tfp" or (errorHandler.buildDepError "tfp"))
            (hsPkgs."comfort-array-shape" or (errorHandler.buildDepError "comfort-array-shape"))
            (hsPkgs."comfort-array" or (errorHandler.buildDepError "comfort-array"))
            (hsPkgs."data-ref" or (errorHandler.buildDepError "data-ref"))
            (hsPkgs."unique-logic-tf" or (errorHandler.buildDepError "unique-logic-tf"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."doctest-exitcode-stdio" or (errorHandler.buildDepError "doctest-exitcode-stdio"))
            (hsPkgs."quickcheck-transformer" or (errorHandler.buildDepError "quickcheck-transformer"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."ChasingBottoms" or (errorHandler.buildDepError "ChasingBottoms"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."monoid-transformer" or (errorHandler.buildDepError "monoid-transformer"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."non-empty" or (errorHandler.buildDepError "non-empty"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
    };
  }