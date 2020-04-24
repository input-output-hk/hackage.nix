{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      tests = true;
      dd = true;
      mkl = false;
      unsafe = false;
      vector = true;
      binary = true;
      finit = false;
      };
    package = {
      specVersion = "1.6";
      identifier = { name = "hmatrix"; version = "0.11.0.3"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Alberto Ruiz <aruiz@um.es>";
      author = "Alberto Ruiz";
      homepage = "http://perception.inf.um.es/hmatrix";
      url = "";
      synopsis = "Linear algebra and numerical computation";
      description = "Purely functional interface to basic linear algebra\nand other numerical computations, internally implemented using\nGSL, BLAS and LAPACK.\n\nThe Linear Algebra API is organized as follows:\n\n- \"Data.Packed\": structure manipulation\n\n- \"Numeric.Container\": simple numeric functions\n\n- \"Numeric.LinearAlgebra.Algorithms\": matrix computations\n\n- \"Numeric.LinearAlgebra\": everything + instances of standard Haskell numeric classes";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."storable-complex" or ((hsPkgs.pkgs-errors).buildDepError "storable-complex"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          ] ++ (pkgs.lib).optional (flags.vector) (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))) ++ (pkgs.lib).optional (flags.binary) (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))) ++ (pkgs.lib).optionals (flags.tests) [
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          ];
        libs = ((pkgs.lib).optionals (flags.mkl) (if system.isX86_64
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
            ]) ++ (pkgs.lib).optional (system.isOsx) (pkgs."gsl" or ((hsPkgs.pkgs-errors).sysDepError "gsl"))) ++ (pkgs.lib).optionals (system.isWindows) [
          (pkgs."gsl-0" or ((hsPkgs.pkgs-errors).sysDepError "gsl-0"))
          (pkgs."blas" or ((hsPkgs.pkgs-errors).sysDepError "blas"))
          (pkgs."lapack" or ((hsPkgs.pkgs-errors).sysDepError "lapack"))
          ];
        frameworks = (pkgs.lib).optional (system.isOsx) (pkgs."Accelerate" or ((hsPkgs.pkgs-errors).sysDepError "Accelerate"));
        buildable = true;
        };
      };
    }