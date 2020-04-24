{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { mkl = false; unsafe = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "hmatrix"; version = "0.8.3.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Alberto Ruiz <aruiz@um.es>";
      author = "Alberto Ruiz";
      homepage = "http://code.haskell.org/hmatrix";
      url = "";
      synopsis = "Linear algebra and numerical computation";
      description = "Purely functional interface to basic linear algebra\nand other numerical computations, internally implemented using\nGSL, BLAS and LAPACK.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
          (hsPkgs."storable-complex" or ((hsPkgs.pkgs-errors).buildDepError "storable-complex"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          ];
        libs = (pkgs.lib).optionals (flags.mkl) (if system.isX86_64
          then [
            (pkgs."gsl" or ((hsPkgs.pkgs-errors).sysDepError "gsl"))
            (pkgs."mkl_lapack" or ((hsPkgs.pkgs-errors).sysDepError "mkl_lapack"))
            (pkgs."mkl_intel_lp64" or ((hsPkgs.pkgs-errors).sysDepError "mkl_intel_lp64"))
            (pkgs."mkl_sequential" or ((hsPkgs.pkgs-errors).sysDepError "mkl_sequential"))
            (pkgs."mkl_core" or ((hsPkgs.pkgs-errors).sysDepError "mkl_core"))
            ]
          else [
            (pkgs."gsl" or ((hsPkgs.pkgs-errors).sysDepError "gsl"))
            (pkgs."mkl_lapack" or ((hsPkgs.pkgs-errors).sysDepError "mkl_lapack"))
            (pkgs."mkl_intel" or ((hsPkgs.pkgs-errors).sysDepError "mkl_intel"))
            (pkgs."mkl_sequential" or ((hsPkgs.pkgs-errors).sysDepError "mkl_sequential"))
            (pkgs."mkl_core" or ((hsPkgs.pkgs-errors).sysDepError "mkl_core"))
            ]) ++ (pkgs.lib).optional (system.isOsx) (pkgs."gsl" or ((hsPkgs.pkgs-errors).sysDepError "gsl"));
        frameworks = (pkgs.lib).optional (system.isOsx) (pkgs."Accelerate" or ((hsPkgs.pkgs-errors).sysDepError "Accelerate"));
        buildable = true;
        };
      };
    }