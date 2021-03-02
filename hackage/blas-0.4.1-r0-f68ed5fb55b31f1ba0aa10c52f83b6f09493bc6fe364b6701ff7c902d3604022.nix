{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {
      atlas = false;
      gsl = false;
      mkl = false;
      veclib = false;
      custom = false;
      };
    package = {
      specVersion = "1.2";
      identifier = { name = "blas"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008. Patrick Perry <patperry@stanford.edu>";
      maintainer = "Patrick Perry <patperry@stanford.edu>";
      author = "Patrick Perry";
      homepage = "http://stat.stanford.edu/~patperry/code/blas";
      url = "";
      synopsis = "Bindings to the BLAS library";
      description = "The BLAS (Basic Linear Algebra Subprograms) are routines that provide\nstandard building blocks for performing basic vector and matrix operations.\nThe Level 1 BLAS perform scalar, vector and vector-vector operations, the\nLevel 2 BLAS perform matrix-vector operations, and the Level 3 BLAS perform\nmatrix-matrix operations. Because the BLAS are efficient, portable, and\nwidely available, they are commonly used in the development of high quality\nlinear algebra software, LAPACK for example.\n\nFor more information, see the Netlib BLAS webpage:\n<http://www.netlib.org/blas/>\n";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ieee" or (errorHandler.buildDepError "ieee"))
          (hsPkgs."storable-complex" or (errorHandler.buildDepError "storable-complex"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
        libs = ((((pkgs.lib).optionals (flags.atlas) [
          (pkgs."cblas" or (errorHandler.sysDepError "cblas"))
          (pkgs."atlas" or (errorHandler.sysDepError "atlas"))
          ] ++ (pkgs.lib).optional (flags.gsl) (pkgs."gslcblas" or (errorHandler.sysDepError "gslcblas"))) ++ (pkgs.lib).optionals (flags.mkl) (if system.isX86_64
          then [
            (pkgs."mkl_lapack" or (errorHandler.sysDepError "mkl_lapack"))
            (pkgs."mkl_intel_lp64" or (errorHandler.sysDepError "mkl_intel_lp64"))
            (pkgs."mkl_sequential" or (errorHandler.sysDepError "mkl_sequential"))
            (pkgs."mkl_core" or (errorHandler.sysDepError "mkl_core"))
            ]
          else [
            (pkgs."mkl_lapack" or (errorHandler.sysDepError "mkl_lapack"))
            (pkgs."mkl_intel" or (errorHandler.sysDepError "mkl_intel"))
            (pkgs."mkl_sequential" or (errorHandler.sysDepError "mkl_sequential"))
            (pkgs."mkl_core" or (errorHandler.sysDepError "mkl_core"))
            ])) ++ (pkgs.lib).optional (flags.veclib) (pkgs."cblas" or (errorHandler.sysDepError "cblas"))) ++ (pkgs.lib).optionals (!flags.atlas && !flags.gsl && !flags.mkl && !flags.veclib && !flags.custom) [
          (pkgs."cblas" or (errorHandler.sysDepError "cblas"))
          (pkgs."atlas" or (errorHandler.sysDepError "atlas"))
          ];
        buildable = true;
        };
      };
    }