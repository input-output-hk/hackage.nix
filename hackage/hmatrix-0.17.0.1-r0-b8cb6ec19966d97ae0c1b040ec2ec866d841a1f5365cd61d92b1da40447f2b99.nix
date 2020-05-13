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
    flags = { openblas = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "hmatrix"; version = "0.17.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alberto Ruiz";
      author = "Alberto Ruiz";
      homepage = "https://github.com/albertoruiz/hmatrix";
      url = "";
      synopsis = "Numeric Linear Algebra";
      description = "Linear systems, matrix decompositions, and other numerical computations based on BLAS and LAPACK.\n\nStandard interface: \"Numeric.LinearAlgebra\".\n\nSafer interface with statically checked dimensions: \"Numeric.LinearAlgebra.Static\".\n\nCode examples: <http://dis.um.es/~alberto/hmatrix/hmatrix.html>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."storable-complex" or (errorHandler.buildDepError "storable-complex"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        libs = (((pkgs.lib).optionals (system.isOsx) (if flags.openblas
          then [ (pkgs."openblas" or (errorHandler.sysDepError "openblas")) ]
          else [
            (pkgs."blas" or (errorHandler.sysDepError "blas"))
            (pkgs."lapack" or (errorHandler.sysDepError "lapack"))
            ]) ++ (pkgs.lib).optionals (system.isFreebsd) ([
          (pkgs."gfortran" or (errorHandler.sysDepError "gfortran"))
          ] ++ (if flags.openblas
          then [ (pkgs."openblas" or (errorHandler.sysDepError "openblas")) ]
          else [
            (pkgs."blas" or (errorHandler.sysDepError "blas"))
            (pkgs."lapack" or (errorHandler.sysDepError "lapack"))
            ]))) ++ (pkgs.lib).optionals (system.isWindows) (if flags.openblas
          then [
            (pkgs."libopenblas" or (errorHandler.sysDepError "libopenblas"))
            ]
          else [
            (pkgs."blas" or (errorHandler.sysDepError "blas"))
            (pkgs."lapack" or (errorHandler.sysDepError "lapack"))
            ])) ++ (pkgs.lib).optionals (system.isLinux) (if flags.openblas
          then [ (pkgs."openblas" or (errorHandler.sysDepError "openblas")) ]
          else [
            (pkgs."blas" or (errorHandler.sysDepError "blas"))
            (pkgs."lapack" or (errorHandler.sysDepError "lapack"))
            ]);
        frameworks = (pkgs.lib).optional (system.isOsx) (pkgs."Accelerate" or (errorHandler.sysDepError "Accelerate"));
        buildable = true;
        };
      };
    }