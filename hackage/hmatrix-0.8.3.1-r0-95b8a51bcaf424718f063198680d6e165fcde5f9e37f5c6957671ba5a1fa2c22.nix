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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."storable-complex" or (errorHandler.buildDepError "storable-complex"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
        libs = (pkgs.lib).optionals (flags.mkl) (if system.isX86_64
          then [
            (pkgs."gsl" or (errorHandler.sysDepError "gsl"))
            (pkgs."mkl_lapack" or (errorHandler.sysDepError "mkl_lapack"))
            (pkgs."mkl_intel_lp64" or (errorHandler.sysDepError "mkl_intel_lp64"))
            (pkgs."mkl_sequential" or (errorHandler.sysDepError "mkl_sequential"))
            (pkgs."mkl_core" or (errorHandler.sysDepError "mkl_core"))
            ]
          else [
            (pkgs."gsl" or (errorHandler.sysDepError "gsl"))
            (pkgs."mkl_lapack" or (errorHandler.sysDepError "mkl_lapack"))
            (pkgs."mkl_intel" or (errorHandler.sysDepError "mkl_intel"))
            (pkgs."mkl_sequential" or (errorHandler.sysDepError "mkl_sequential"))
            (pkgs."mkl_core" or (errorHandler.sysDepError "mkl_core"))
            ]) ++ (pkgs.lib).optional (system.isOsx) (pkgs."gsl" or (errorHandler.sysDepError "gsl"));
        frameworks = (pkgs.lib).optional (system.isOsx) (pkgs."Accelerate" or (errorHandler.sysDepError "Accelerate"));
        buildable = true;
        };
      };
    }