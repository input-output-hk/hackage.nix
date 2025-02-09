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
      specVersion = "1.10";
      identifier = { name = "vector-fft"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 chessai, ocramz, konsumlamm";
      maintainer = "ocramz";
      author = "chessai, Marco Zocca, konsumlamm";
      homepage = "https://github.com/ocramz/vector-fft";
      url = "";
      synopsis = "Native FFT and IFFT for vector";
      description = "Native Fast Fourier Transform and Inverse Fast Fourier Transform for vector, with minimal dependencies.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-fft" or (errorHandler.buildDepError "vector-fft"))
          ];
          buildable = true;
        };
      };
    };
  }