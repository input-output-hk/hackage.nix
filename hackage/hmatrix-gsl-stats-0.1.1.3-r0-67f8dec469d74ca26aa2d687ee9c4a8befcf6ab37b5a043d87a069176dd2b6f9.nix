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
    flags = { mkl = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "hmatrix-gsl-stats"; version = "0.1.1.3"; };
      license = "LicenseRef-GPL";
      copyright = "(c) A.V.H. McPhail 2010";
      maintainer = "haskell.vivian.mcphail <at> gmail <dot> com";
      author = "Vivian McPhail";
      homepage = "http://code.haskell.org/hmatrix-gsl-stats";
      url = "";
      synopsis = "GSL Statistics interface";
      description = "Purely functional interface for statistics based on hmatrix and GSL";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."storable-complex" or (buildDepError "storable-complex"))
          (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
          ];
        libs = ((pkgs.lib).optionals (flags.mkl) (if system.isX86_64
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
            ]) ++ (pkgs.lib).optional (system.isOsx) (pkgs."gsl" or (sysDepError "gsl"))) ++ (pkgs.lib).optionals (system.isWindows) [
          (pkgs."gsl-0" or (sysDepError "gsl-0"))
          (pkgs."blas" or (sysDepError "blas"))
          (pkgs."lapack" or (sysDepError "lapack"))
          ];
        frameworks = (pkgs.lib).optional (system.isOsx) (pkgs."Accelerate" or (sysDepError "Accelerate"));
        };
      };
    }