{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "lapack"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://hub.darcs.net/thielema/lapack/";
      url = "";
      synopsis = "Numerical Linear Algebra using LAPACK";
      description = "This is a high-level interface to LAPACK.\n\nFeatures:\n\n* Based on @comfort-array@:\nAllows to precisely express one-column or one-row matrices,\nas well as dense, square, triangular, banded and symmetric matrices.\n\n* Support all data types that are supported by LAPACK,\ni.e. Float, Double, Complex Float, Complex Double\n\n* No need for c2hs, hsc, Template Haskell or C helper functions\n\n* Dependency only on BLAS and LAPACK, no GSL\n\n* Separate formatting operator @(##)@:\nWorks better for tuples of matrices and vectors than 'show'.\n'Show' is used for code one-liners\nthat can be copied back into Haskell modules.\n\nSee also: @hmatrix@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."lapack-ffi" or ((hsPkgs.pkgs-errors).buildDepError "lapack-ffi"))
          (hsPkgs."blas-ffi" or ((hsPkgs.pkgs-errors).buildDepError "blas-ffi"))
          (hsPkgs."netlib-ffi" or ((hsPkgs.pkgs-errors).buildDepError "netlib-ffi"))
          (hsPkgs."comfort-array" or ((hsPkgs.pkgs-errors).buildDepError "comfort-array"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."non-empty" or ((hsPkgs.pkgs-errors).buildDepError "non-empty"))
          (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }