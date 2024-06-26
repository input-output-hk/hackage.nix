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
      identifier = { name = "accelerate-fftw"; version = "1.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://hub.darcs.net/thielema/accelerate-fftw/";
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
    };
  }