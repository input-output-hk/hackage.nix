let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { buildexamples = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "lapack"; version = "0.2"; };
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
          (hsPkgs."lapack-ffi" or (buildDepError "lapack-ffi"))
          (hsPkgs."blas-ffi" or (buildDepError "blas-ffi"))
          (hsPkgs."netlib-ffi" or (buildDepError "netlib-ffi"))
          (hsPkgs."comfort-array" or (buildDepError "comfort-array"))
          (hsPkgs."guarded-allocation" or (buildDepError "guarded-allocation"))
          (hsPkgs."boxes" or (buildDepError "boxes"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."lazyio" or (buildDepError "lazyio"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."tfp" or (buildDepError "tfp"))
          (hsPkgs."fixed-length" or (buildDepError "fixed-length"))
          (hsPkgs."non-empty" or (buildDepError "non-empty"))
          (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
          (hsPkgs."base" or (buildDepError "base"))
          ];
        };
      exes = {
        "lapack-economic" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."lapack" or (buildDepError "lapack"))
            (hsPkgs."comfort-array" or (buildDepError "comfort-array"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        };
      tests = {
        "lapack-test" = {
          depends = [
            (hsPkgs."lapack" or (buildDepError "lapack"))
            (hsPkgs."netlib-ffi" or (buildDepError "netlib-ffi"))
            (hsPkgs."tfp" or (buildDepError "tfp"))
            (hsPkgs."comfort-array" or (buildDepError "comfort-array"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."ChasingBottoms" or (buildDepError "ChasingBottoms"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."non-empty" or (buildDepError "non-empty"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        };
      };
    }