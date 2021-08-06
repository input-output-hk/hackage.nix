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
      identifier = { name = "comfort-fftw"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "https://hub.darcs.net/thielema/comfort-fftw/";
      url = "";
      synopsis = "High-level interface to FFTW (Fast Fourier Transform) based on comfort-array";
      description = "FFTW claims to be the fastest Fourier Transform in the West.\nThis is a high-level interface to @libfftw@.\nWe re-use the type classes from @netlib-ffi@.\n\nFor rather simple examples\nsee the packages @align-audio@ and @morbus-meniere@.\n\nSee also package @fft@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."fftw-ffi" or (errorHandler.buildDepError "fftw-ffi"))
          (hsPkgs."comfort-array" or (errorHandler.buildDepError "comfort-array"))
          (hsPkgs."netlib-ffi" or (errorHandler.buildDepError "netlib-ffi"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "fftw-test" = {
          depends = [
            (hsPkgs."comfort-fftw" or (errorHandler.buildDepError "comfort-fftw"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."doctest-exitcode-stdio" or (errorHandler.buildDepError "doctest-exitcode-stdio"))
            (hsPkgs."doctest-lib" or (errorHandler.buildDepError "doctest-lib"))
            (hsPkgs."comfort-array" or (errorHandler.buildDepError "comfort-array"))
            (hsPkgs."netlib-ffi" or (errorHandler.buildDepError "netlib-ffi"))
            (hsPkgs."non-empty" or (errorHandler.buildDepError "non-empty"))
            (hsPkgs."storable-record" or (errorHandler.buildDepError "storable-record"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }