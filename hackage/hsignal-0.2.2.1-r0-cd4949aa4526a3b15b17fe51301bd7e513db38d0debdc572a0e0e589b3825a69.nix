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
      specVersion = "1.8";
      identifier = { name = "hsignal"; version = "0.2.2.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) A.V.H. McPhail 2010, 2011";
      maintainer = "haskell.vivian.mcphail <at> gmail <dot> com";
      author = "Vivian McPhail";
      homepage = "http://code.haskell.org/hsignal";
      url = "";
      synopsis = "Signal processing and EEG data analysis";
      description = "Purely functional interface to signal processing based on hmatrix\n\nProvides data types for manipulating EEG data, including reading from BDF data format files\n\nWhen hmatrix is installed with -fvector, the vector type is Data.Vector.Storable\nfrom the vector package.\n\nFeature requests, suggestions, and bug fixes welcome.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."storable-complex" or (buildDepError "storable-complex"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
          (hsPkgs."hmatrix-gsl-stats" or (buildDepError "hmatrix-gsl-stats"))
          (hsPkgs."hstatistics" or (buildDepError "hstatistics"))
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