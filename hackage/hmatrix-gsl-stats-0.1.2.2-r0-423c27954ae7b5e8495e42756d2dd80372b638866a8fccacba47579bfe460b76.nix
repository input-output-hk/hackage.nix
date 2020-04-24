{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { mkl = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "hmatrix-gsl-stats"; version = "0.1.2.2"; };
      license = "LicenseRef-GPL";
      copyright = "(c) A.V.H. McPhail 2010";
      maintainer = "haskell.vivian.mcphail <at> gmail <dot> com";
      author = "Vivian McPhail";
      homepage = "http://code.haskell.org/hmatrix-gsl-stats";
      url = "";
      synopsis = "GSL Statistics interface";
      description = "Purely functional interface for statistics based on hmatrix and GSL\n\nRelieves the burden of alloc/free routines and is otherwise essentially 1:1\n\nDocumentation can be found at <http://www.gnu.org/software/gsl/manual/>";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghc-binary" or ((hsPkgs.pkgs-errors).buildDepError "ghc-binary"))
          (hsPkgs."storable-complex" or ((hsPkgs.pkgs-errors).buildDepError "storable-complex"))
          (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
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