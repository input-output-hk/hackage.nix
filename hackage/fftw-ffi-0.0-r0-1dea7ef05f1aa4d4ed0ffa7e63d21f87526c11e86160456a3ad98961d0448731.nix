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
    flags = { buildtools = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "fftw-ffi"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "https://hub.darcs.net/thielema/fftw-ffi/";
      url = "";
      synopsis = "Low-level interface to FFTW (Fast Fourier Transform)";
      description = "FFTW claims to be the fastest Fourier Transform in the West.\nThis is a low-level interface to @libfftw@.\nWe re-use the type classes from @netlib-ffi@.\n\nSee also package @fft@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."enumset" or (errorHandler.buildDepError "enumset"))
          (hsPkgs."netlib-ffi" or (errorHandler.buildDepError "netlib-ffi"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        pkgconfig = [
          (pkgconfPkgs."fftw3f" or (errorHandler.pkgConfDepError "fftw3f"))
          (pkgconfPkgs."fftw3" or (errorHandler.pkgConfDepError "fftw3"))
        ];
        buildable = true;
      };
      exes = {
        "fftw-generate" = {
          depends = pkgs.lib.optional (flags.buildtools) (hsPkgs."base" or (errorHandler.buildDepError "base"));
          buildable = if flags.buildtools then true else false;
        };
      };
    };
  }