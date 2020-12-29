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
      identifier = { name = "vector-fft"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2020 chessai, ocramz";
      maintainer = "ocramz";
      author = "chessai, Marco Zocca";
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
      };
    }