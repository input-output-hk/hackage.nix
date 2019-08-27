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
    flags = {
      dd = true;
      mkl = false;
      unsafe = false;
      finit = false;
      debugfpu = false;
      debugnan = false;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "hmatrix"; version = "0.15.0.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Alberto Ruiz <aruiz@um.es>";
      author = "Alberto Ruiz";
      homepage = "https://github.com/albertoruiz/hmatrix";
      url = "";
      synopsis = "Linear algebra and numerical computation";
      description = "Purely functional interface to basic linear algebra\nand other numerical computations, internally implemented using\nGSL, BLAS and LAPACK.\n\nThe Linear Algebra API is organized as follows:\n\n- \"Data.Packed\": structure manipulation\n\n- \"Numeric.Container\": simple numeric functions\n\n- \"Numeric.LinearAlgebra.Algorithms\": matrix computations\n\n- \"Numeric.LinearAlgebra\": everything + instances of standard Haskell numeric classes";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (buildToolDepError "base")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or (buildToolDepError "filepath")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or (buildToolDepError "directory")))
        (hsPkgs.buildPackages.process or (pkgs.buildPackages.process or (buildToolDepError "process")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."storable-complex" or (buildDepError "storable-complex"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."binary" or (buildDepError "binary"))
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