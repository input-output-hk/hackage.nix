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
      identifier = { name = "accelerate-fourier-benchmark"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://code.haskell.org/~thielema/accelerate-fourier-benchmark/";
      url = "";
      synopsis = "Compare different implementations of the Fast Fourier Transform";
      description = "Compare\n\n* @accelerate-fourier@\n\n* @accelerate-cufft@\n\n* @accelerate-fftw@";
      buildType = "Simple";
    };
    components = {
      exes = {
        "accelerate-fourier-benchmark" = {
          depends = [
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."accelerate-cufft" or (errorHandler.buildDepError "accelerate-cufft"))
            (hsPkgs."accelerate-fftw" or (errorHandler.buildDepError "accelerate-fftw"))
            (hsPkgs."accelerate-fourier" or (errorHandler.buildDepError "accelerate-fourier"))
            (hsPkgs."accelerate-cuda" or (errorHandler.buildDepError "accelerate-cuda"))
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
    };
  }