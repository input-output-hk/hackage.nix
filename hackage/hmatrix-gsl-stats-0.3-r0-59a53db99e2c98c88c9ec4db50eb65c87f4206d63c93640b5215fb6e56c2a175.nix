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
      specVersion = "1.10.1.0";
      identifier = { name = "hmatrix-gsl-stats"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) A.V.H. McPhail 2010, 2011, 2013, 2015";
      maintainer = "haskell.vivian.mcphail <at> gmail <dot> com";
      author = "Vivian McPhail";
      homepage = "http://code.haskell.org/hmatrix-gsl-stats";
      url = "";
      synopsis = "GSL Statistics interface";
      description = "Purely functional interface for statistics based on hmatrix and GSL\n\nRelieves the burden of alloc/free routines and is otherwise essentially 1:1\n\nDocumentation can be found at <http://www.gnu.org/software/gsl/manual/>\n\nThe vector type is Data.Vector.Storable from the 'vector' package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."storable-complex" or (errorHandler.buildDepError "storable-complex"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
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