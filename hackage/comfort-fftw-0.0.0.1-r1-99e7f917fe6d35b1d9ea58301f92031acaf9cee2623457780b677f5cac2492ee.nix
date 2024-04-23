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
      identifier = { name = "comfort-fftw"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "https://hub.darcs.net/thielema/comfort-fftw/";
      url = "";
      synopsis = "High-level interface to FFTW (Fast Fourier Transform) based on comfort-array";
      description = "FFTW claims to be the fastest Fourier Transform in the West.\nThis is a high-level interface to @libfftw@.\nWe re-use the type classes from @netlib-ffi@.\n\nFeatures:\n\n* Support of one (audio), two (image), three (video) dimensional data,\nas well as n-dimensional one.\n\n* Support for batched transformations e.g. for block-wise Fourier transform.\n\n* No normalization like in plain @fftw@.\nThis is because I see no universally best place to apply normalization.\n\nThe use of @comfort-array@ enables to use array shapes tailored\nto Fourier transforms:\n\n[@Shape.Cyclic@]: for data where the @n-1@-th element\ncan also be accessed via index @-1@.\n[@Shape.Half@]: for complex data of a real-to-complex Fourier transform.\nIt saves you from case distinction between even and odd data length\nand according mistakes.\n[@Shape.Symmetric@]: for real-to-real Sine and Cosine transforms.\nThey assert that you will always use\nthe appropriate kind for back transformation.\n\nFor rather simple examples\nsee the packages @align-audio@ and @morbus-meniere@.\n\nSee also package @fft@.";
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