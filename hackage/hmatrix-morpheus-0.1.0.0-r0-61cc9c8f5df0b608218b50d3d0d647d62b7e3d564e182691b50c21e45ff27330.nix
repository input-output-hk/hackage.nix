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
      specVersion = "1.10";
      identifier = { name = "hmatrix-morpheus"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Alexander Ignatyev";
      maintainer = "ignatyev.alexander@gmail.com";
      author = "Alexander Ignatyev";
      homepage = "https://github.com/alexander-ignatyev/morpheus";
      url = "";
      synopsis = "Low-level machine learning auxiliary functions.";
      description = "Purely functional interface to morpheus based on hmatrix.\nMorpheus library contains a bunch of cache line aware numerical algorithms\nsuitable for using as a low-level primitives to build machine learning applications.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          ];
        libs = (pkgs.lib).optionals (system.isLinux) (if flags.openblas
          then [ (pkgs."openblas" or (errorHandler.sysDepError "openblas")) ]
          else [
            (pkgs."blas" or (errorHandler.sysDepError "blas"))
            (pkgs."lapack" or (errorHandler.sysDepError "lapack"))
            ]);
        frameworks = (pkgs.lib).optional (system.isOsx) (pkgs."Accelerate" or (errorHandler.sysDepError "Accelerate"));
        buildable = true;
        };
      exes = {
        "hmatrix-morpheus-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hmatrix-morpheus" or (errorHandler.buildDepError "hmatrix-morpheus"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            ];
          buildable = true;
          };
        };
      tests = {
        "hmatrix-morpheus-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hmatrix-morpheus" or (errorHandler.buildDepError "hmatrix-morpheus"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "hmatrix-morpheus-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hmatrix-morpheus" or (errorHandler.buildDepError "hmatrix-morpheus"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }