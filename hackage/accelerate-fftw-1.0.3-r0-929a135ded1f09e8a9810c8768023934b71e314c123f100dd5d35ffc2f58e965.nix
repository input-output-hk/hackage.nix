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
      specVersion = "2.2";
      identifier = { name = "accelerate-fftw"; version = "1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "https://hub.darcs.net/thielema/accelerate-fftw/";
      url = "";
      synopsis = "Accelerate frontend to the FFTW library (Fourier transform)";
      description = "An interface to the Fastest Fourier Transform in the West (FFTW)\nfor the @accelerate@ framework.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."fft" or (errorHandler.buildDepError "fft"))
          (hsPkgs."carray" or (errorHandler.buildDepError "carray"))
          (hsPkgs."storable-complex" or (errorHandler.buildDepError "storable-complex"))
          (hsPkgs."accelerate-io" or (errorHandler.buildDepError "accelerate-io"))
          (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
      tests = {
        "accelerate-fftw-test" = {
          depends = [
            (hsPkgs."doctest-exitcode-stdio" or (errorHandler.buildDepError "doctest-exitcode-stdio"))
            (hsPkgs."doctest-lib" or (errorHandler.buildDepError "doctest-lib"))
            (hsPkgs."accelerate-fftw" or (errorHandler.buildDepError "accelerate-fftw"))
            (hsPkgs."accelerate-utility" or (errorHandler.buildDepError "accelerate-utility"))
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
    };
  }