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
    flags = { splitbase = true; mkl = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "hmatrix"; version = "0.3.0.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Alberto Ruiz <aruiz@um.es>";
      author = "Alberto Ruiz";
      homepage = "http://alberrto.googlepages.com/gslhaskell";
      url = "";
      synopsis = "Linear algebra and numerical computations";
      description = "A purely functional interface to basic linear algebra computations\nand other numerical routines, internally implemented using\nGSL, BLAS and LAPACK.\n\nMore information: <http://alberrto.googlepages.com/gslhaskell>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
        ] ++ (if flags.splitbase
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."storable-complex" or (errorHandler.buildDepError "storable-complex"))
          ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."storable-complex" or (errorHandler.buildDepError "storable-complex"))
          ]);
        libs = if flags.mkl
          then if system.isX86_64
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
            ]
          else [
            (pkgs."gsl" or (errorHandler.sysDepError "gsl"))
            (pkgs."blas" or (errorHandler.sysDepError "blas"))
            (pkgs."lapack" or (errorHandler.sysDepError "lapack"))
          ];
        buildable = true;
      };
    };
  }