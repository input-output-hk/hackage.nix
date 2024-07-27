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
      dd = true;
      mkl = false;
      unsafe = false;
      finit = false;
      debugfpu = false;
      debugnan = false;
    };
    package = {
      specVersion = "1.8";
      identifier = { name = "hmatrix"; version = "0.14.0.0"; };
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
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.directory or (pkgs.pkgsBuildBuild.directory or (errorHandler.setupDepError "directory")))
        (hsPkgs.pkgsBuildBuild.process or (pkgs.pkgsBuildBuild.process or (errorHandler.setupDepError "process")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."storable-complex" or (errorHandler.buildDepError "storable-complex"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
        ];
        libs = (pkgs.lib.optionals (flags.mkl) (if system.isX86_64
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
          ]) ++ pkgs.lib.optional (system.isOsx) (pkgs."gsl" or (errorHandler.sysDepError "gsl"))) ++ pkgs.lib.optionals (system.isWindows) [
          (pkgs."gsl-0" or (errorHandler.sysDepError "gsl-0"))
          (pkgs."blas" or (errorHandler.sysDepError "blas"))
          (pkgs."lapack" or (errorHandler.sysDepError "lapack"))
        ];
        frameworks = pkgs.lib.optional (system.isOsx) (pkgs."Accelerate" or (errorHandler.sysDepError "Accelerate"));
        buildable = true;
      };
    };
  }