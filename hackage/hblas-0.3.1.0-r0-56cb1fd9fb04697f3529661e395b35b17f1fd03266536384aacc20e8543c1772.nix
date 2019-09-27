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
    flags = { openblas = false; cblas = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hblas"; version = "0.3.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "carter at wellposed dot com";
      author = "Carter Tazio Schonwald";
      homepage = "http://github.com/wellposed/hblas/";
      url = "";
      synopsis = "Human friendly BLAS and Lapack bindings for Haskell.";
      description = "User friendly, simple bindings to BLAS and Lapack. Easy to extend and use.\n\nHBLAS assumes you have BLAS and LAPACK installed. Users on OSX already\nhave a BLAS and LAPACK installed for them. Users on LINUX and similar\nplatforms will need to do the system equivalent of @sudo apt-get install libblas liblapack@.\n\nHBLAS  is not intended to be a library for end user array operations,\nbut rather an easy adaptor for calling BLAS and LAPACK routines in their\nfull generality from your end-user haskell linear algebra / array library\nof choice.\n\nHBLAS roughly mirrors the naming conventions and datatype names of  the standard\nBLAS and LAPACK libraries. Those of you who are familiar with these conventions\nand moderately comfortable with haskell will feel right at home.\n\nIf you are not familiar with the the operations and conventions of BLAS and\nLapack, please read the\n<https://software.intel.com/sites/products/documentation/hpc/mkl/mklman/index.htm Intel MKL BLAS and LAPACK documention>,\nyou'll learn a lot about what BLAS and LAPACK can do.\n\nHBLAS doesn't provide every BLAS and LAPACK operation currently, but\nis designed so that adding support for new operations is quite easy!";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."storable-complex" or (buildDepError "storable-complex"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        libs = (((pkgs.lib).optionals (flags.openblas) [
          (pkgs."openblas" or (sysDepError "openblas"))
          (pkgs."pthread" or (sysDepError "pthread"))
          ] ++ (pkgs.lib).optionals (system.isWindows && !flags.openblas) [
          (pkgs."blas" or (sysDepError "blas"))
          (pkgs."lapack" or (sysDepError "lapack"))
          ]) ++ (pkgs.lib).optionals (!system.isWindows && !system.isOsx && !flags.openblas) [
          (pkgs."blas" or (sysDepError "blas"))
          (pkgs."lapack" or (sysDepError "lapack"))
          ]) ++ (pkgs.lib).optional (flags.cblas) (pkgs."cblas" or (sysDepError "cblas"));
        frameworks = (pkgs.lib).optional (system.isOsx && !flags.openblas) (pkgs."Accelerate" or (sysDepError "Accelerate"));
        buildable = true;
        };
      tests = {
        "unit-testsuite" = {
          depends = [
            (hsPkgs."hblas" or (buildDepError "hblas"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }