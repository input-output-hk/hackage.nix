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
      identifier = { name = "hsignal"; version = "0.2.7"; };
      license = "BSD-3-Clause";
      copyright = "(c) A.V.H. McPhail 2010, 2011, 2014, 2105";
      maintainer = "haskell.vivian.mcphail <at> gmail <dot> com";
      author = "Vivian McPhail";
      homepage = "http://code.haskell.org/hsignal";
      url = "";
      synopsis = "Signal processing and EEG data analysis";
      description = "Purely functional interface to signal processing based on hmatrix\n\nProvides data types for manipulating EEG data, including reading from BDF data format files\n\nThe vector type is Data.Vector.Storable from the 'vector' package.\n\nFeature requests, suggestions, and bug fixes welcome.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."storable-complex" or (errorHandler.buildDepError "storable-complex"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."hmatrix-gsl" or (errorHandler.buildDepError "hmatrix-gsl"))
          (hsPkgs."hmatrix-gsl-stats" or (errorHandler.buildDepError "hmatrix-gsl-stats"))
          (hsPkgs."hstatistics" or (errorHandler.buildDepError "hstatistics"))
          ];
        libs = ((if flags.openblas
          then [ (pkgs."openblas" or (errorHandler.sysDepError "openblas")) ]
          else [
            (pkgs."blas" or (errorHandler.sysDepError "blas"))
            (pkgs."lapack" or (errorHandler.sysDepError "lapack"))
            ]) ++ (pkgs.lib).optionals (system.isFreebsd) [
          (pkgs."blas" or (errorHandler.sysDepError "blas"))
          (pkgs."lapack" or (errorHandler.sysDepError "lapack"))
          (pkgs."gfortran" or (errorHandler.sysDepError "gfortran"))
          ]) ++ (pkgs.lib).optionals (system.isWindows) [
          (pkgs."blas" or (errorHandler.sysDepError "blas"))
          (pkgs."lapack" or (errorHandler.sysDepError "lapack"))
          ];
        frameworks = (pkgs.lib).optional (system.isOsx) (pkgs."Accelerate" or (errorHandler.sysDepError "Accelerate"));
        buildable = true;
        };
      };
    }