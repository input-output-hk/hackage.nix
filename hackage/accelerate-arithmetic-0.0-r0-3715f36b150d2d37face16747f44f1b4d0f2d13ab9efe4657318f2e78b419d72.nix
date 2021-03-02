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
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "accelerate-arithmetic"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://code.haskell.org/~thielema/accelerate-arithmetic/";
      url = "";
      synopsis = "Linear algebra and interpolation using the Accelerate framework";
      description = "Linear algebra and interpolation via the @accelerate@ package.\nThis can be used for computations on GPUs\nbut it does not contain processor optimizations\nor optimizations for CUDA.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."accelerate-utility" or (errorHandler.buildDepError "accelerate-utility"))
          (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."accelerate-arithmetic" or (errorHandler.buildDepError "accelerate-arithmetic"))
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "newton-inverse" = {
          depends = [
            (hsPkgs."accelerate-arithmetic" or (errorHandler.buildDepError "accelerate-arithmetic"))
            (hsPkgs."accelerate-utility" or (errorHandler.buildDepError "accelerate-utility"))
            (hsPkgs."accelerate-cuda" or (errorHandler.buildDepError "accelerate-cuda"))
            (hsPkgs."cublas" or (errorHandler.buildDepError "cublas"))
            (hsPkgs."cuda" or (errorHandler.buildDepError "cuda"))
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."pooled-io" or (errorHandler.buildDepError "pooled-io"))
            (hsPkgs."timeit" or (errorHandler.buildDepError "timeit"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }