{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      splitbase = true;
      mkl = false;
      accelerate = false;
      unsafe = false;
      };
    package = {
      specVersion = "1.2";
      identifier = { name = "hmatrix"; version = "0.5.1.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Alberto Ruiz <aruiz@um.es>";
      author = "Alberto Ruiz";
      homepage = "http://www.hmatrix.googlepages.com";
      url = "";
      synopsis = "Linear algebra and numerical computations";
      description = "This library provides a purely functional interface to basic linear algebra\nand other numerical computations, internally implemented using\nGSL, BLAS and LAPACK.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          ] ++ (if flags.splitbase
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."storable-complex" or ((hsPkgs.pkgs-errors).buildDepError "storable-complex"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."storable-complex" or ((hsPkgs.pkgs-errors).buildDepError "storable-complex"))
            ]);
        libs = if flags.mkl
          then if system.isX86_64
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
              ]
          else if flags.accelerate
            then [ (pkgs."gsl" or ((hsPkgs.pkgs-errors).sysDepError "gsl")) ]
            else [
              (pkgs."gsl" or ((hsPkgs.pkgs-errors).sysDepError "gsl"))
              (pkgs."lapack" or ((hsPkgs.pkgs-errors).sysDepError "lapack"))
              ];
        frameworks = (pkgs.lib).optionals (!flags.mkl) ((pkgs.lib).optional (flags.accelerate) (pkgs."Accelerate" or ((hsPkgs.pkgs-errors).sysDepError "Accelerate")));
        buildable = true;
        };
      };
    }