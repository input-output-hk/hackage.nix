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
    flags = { llvm = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "arb-fft"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (2013) Ian Ross";
      maintainer = "ian@skybluetrades.net";
      author = "Ian Ross";
      homepage = "https://github.com/ian-ross/arb-fft";
      url = "";
      synopsis = "Pure Haskell arbitrary length FFT library";
      description = "This library provides a pure Haskell complex-to-complex Fast Fourier\nTransform implementation for arbitrary length input vectors, using a\nmixed-radix decimation-in-time algorithm with specialised\nstraight-line code for a range of base transform sizes, Rader's\nalgorithm for prime length base transforms, and an empirical\noptimisation scheme to select a good problem decomposition.\n\nThis package is probably primarily of pedagogical interest (FFTW is\nabout five times faster for most input sizes).  There is a long\nseries of blog articles describing the development of the package,\nindexed at <http://www.skybluetrades.net/haskell-fft-index.html>.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      exes = {
        "profile-256" = {
          depends = [
            (hsPkgs."arb-fft" or (errorHandler.buildDepError "arb-fft"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
          ];
          buildable = true;
        };
      };
      tests = {
        "basic-test" = {
          depends = [
            (hsPkgs."arb-fft" or (errorHandler.buildDepError "arb-fft"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
    };
  }