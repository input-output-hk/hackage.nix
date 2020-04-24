{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      atlas = false;
      gsl = false;
      mkl = false;
      veclib = false;
      custom = false;
      };
    package = {
      specVersion = "1.2.0";
      identifier = { name = "blas"; version = "0.6"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008. Patrick Perry <patperry@stanford.edu>";
      maintainer = "Patrick Perry <patperry@stanford.edu>";
      author = "Patrick Perry";
      homepage = "http://stat.stanford.edu/~patperry/code/blas";
      url = "";
      synopsis = "Bindings to the BLAS library";
      description = "The BLAS (Basic Linear Algebra Subprograms) are routines that provide\nstandard building blocks for performing basic vector and matrix operations.\nThe Level 1 BLAS perform scalar, vector and vector-vector operations, the\nLevel 2 BLAS perform matrix-vector operations, and the Level 3 BLAS perform\nmatrix-matrix operations. Because the BLAS are efficient, portable, and\nwidely available, they are commonly used in the development of high quality\nlinear algebra software, LAPACK for example.\n\nFor more information, see the Netlib BLAS webpage:\n<http://www.netlib.org/blas/>\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ieee" or ((hsPkgs.pkgs-errors).buildDepError "ieee"))
          (hsPkgs."permutation" or ((hsPkgs.pkgs-errors).buildDepError "permutation"))
          (hsPkgs."storable-complex" or ((hsPkgs.pkgs-errors).buildDepError "storable-complex"))
          ];
        libs = ((((pkgs.lib).optionals (flags.atlas) [
          (pkgs."cblas" or ((hsPkgs.pkgs-errors).sysDepError "cblas"))
          (pkgs."atlas" or ((hsPkgs.pkgs-errors).sysDepError "atlas"))
          ] ++ (pkgs.lib).optional (flags.gsl) (pkgs."gslcblas" or ((hsPkgs.pkgs-errors).sysDepError "gslcblas"))) ++ (pkgs.lib).optionals (flags.mkl) (if system.isX86_64
          then [
            (pkgs."mkl_lapack" or ((hsPkgs.pkgs-errors).sysDepError "mkl_lapack"))
            (pkgs."mkl_intel_lp64" or ((hsPkgs.pkgs-errors).sysDepError "mkl_intel_lp64"))
            (pkgs."mkl_sequential" or ((hsPkgs.pkgs-errors).sysDepError "mkl_sequential"))
            (pkgs."mkl_core" or ((hsPkgs.pkgs-errors).sysDepError "mkl_core"))
            ]
          else [
            (pkgs."mkl_lapack" or ((hsPkgs.pkgs-errors).sysDepError "mkl_lapack"))
            (pkgs."mkl_intel" or ((hsPkgs.pkgs-errors).sysDepError "mkl_intel"))
            (pkgs."mkl_sequential" or ((hsPkgs.pkgs-errors).sysDepError "mkl_sequential"))
            (pkgs."mkl_core" or ((hsPkgs.pkgs-errors).sysDepError "mkl_core"))
            ])) ++ (pkgs.lib).optional (flags.veclib) (pkgs."cblas" or ((hsPkgs.pkgs-errors).sysDepError "cblas"))) ++ (pkgs.lib).optionals (!flags.atlas && !flags.gsl && !flags.mkl && !flags.veclib && !flags.custom) [
          (pkgs."cblas" or ((hsPkgs.pkgs-errors).sysDepError "cblas"))
          (pkgs."atlas" or ((hsPkgs.pkgs-errors).sysDepError "atlas"))
          ];
        buildable = true;
        };
      };
    }