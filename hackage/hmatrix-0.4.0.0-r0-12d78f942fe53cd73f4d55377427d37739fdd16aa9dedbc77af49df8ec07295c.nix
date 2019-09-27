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
    flags = { splitbase = true; mkl = false; gsl = false; unsafe = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "hmatrix"; version = "0.4.0.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Alberto Ruiz <aruiz@um.es>";
      author = "Alberto Ruiz";
      homepage = "http://www.hmatrix.googlepages.com";
      url = "";
      synopsis = "Linear algebra and numerical computations";
      description = "A purely functional interface to basic linear algebra computations\nand other numerical routines, internally implemented using\nGSL, BLAS and LAPACK.\n\nMore information: <http://www.hmatrix.googlepages.com>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."haskell98" or (buildDepError "haskell98"))
          ] ++ (if flags.splitbase
          then [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."storable-complex" or (buildDepError "storable-complex"))
            ]
          else [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."storable-complex" or (buildDepError "storable-complex"))
            ]);
        libs = if flags.mkl
          then if system.isX86_64
            then [
              (pkgs."gsl" or (sysDepError "gsl"))
              (pkgs."mkl_lapack" or (sysDepError "mkl_lapack"))
              (pkgs."mkl_intel_lp64" or (sysDepError "mkl_intel_lp64"))
              (pkgs."mkl_sequential" or (sysDepError "mkl_sequential"))
              (pkgs."mkl_core" or (sysDepError "mkl_core"))
              ]
            else [
              (pkgs."gsl" or (sysDepError "gsl"))
              (pkgs."mkl_lapack" or (sysDepError "mkl_lapack"))
              (pkgs."mkl_intel" or (sysDepError "mkl_intel"))
              (pkgs."mkl_sequential" or (sysDepError "mkl_sequential"))
              (pkgs."mkl_core" or (sysDepError "mkl_core"))
              ]
          else if flags.gsl
            then [
              (pkgs."gsl" or (sysDepError "gsl"))
              (pkgs."gslcblas" or (sysDepError "gslcblas"))
              (pkgs."lapack" or (sysDepError "lapack"))
              ]
            else [
              (pkgs."gsl" or (sysDepError "gsl"))
              (pkgs."blas" or (sysDepError "blas"))
              (pkgs."lapack" or (sysDepError "lapack"))
              ];
        buildable = true;
        };
      };
    }