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
    flags = { blas = false; lapack = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "align-audio"; version = "0.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "";
      url = "";
      synopsis = "Find relative time displacement of two recordings of the same music";
      description = "Say, you have a video with some background music\nand a clean recording of the background music.\nYou want to know exact displacement of the background music.\nThis program should find it.\n\n> align-audio orig.wav video.wav\n\nThe program actually performs a simple correlation.\n\nThe program can handle sources of different sample rates\nif the sample rates are integers.\n\nYou can specify the precision of the displacement using the @--rate@ option,\nwhich must be a positive integer:\n\n> align-audio --rate 1000 orig.wav video.wav\n\nFor reading of audio files, @libsox@ is used\nand thus you can use all audio formats supported by SoX.\n\nCabal-Flags:\n\n* @blas@ for running with 'comfort-blas' (more memory consumption)\n\n* @lapack@ for running with 'lapack' (heavier dependency)";
      buildType = "Simple";
    };
    components = {
      exes = {
        "align-audio" = {
          depends = [
            (hsPkgs."comfort-fftw" or (errorHandler.buildDepError "comfort-fftw"))
            (hsPkgs."comfort-array" or (errorHandler.buildDepError "comfort-array"))
            (hsPkgs."storablevector" or (errorHandler.buildDepError "storablevector"))
            (hsPkgs."netlib-ffi" or (errorHandler.buildDepError "netlib-ffi"))
            (hsPkgs."Stream" or (errorHandler.buildDepError "Stream"))
            (hsPkgs."numeric-prelude" or (errorHandler.buildDepError "numeric-prelude"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."synthesizer-core" or (errorHandler.buildDepError "synthesizer-core"))
            (hsPkgs."soxlib" or (errorHandler.buildDepError "soxlib"))
            (hsPkgs."shell-utility" or (errorHandler.buildDepError "shell-utility"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ] ++ (if flags.lapack
            then [ (hsPkgs."lapack" or (errorHandler.buildDepError "lapack")) ]
            else pkgs.lib.optional (flags.blas) (hsPkgs."comfort-blas" or (errorHandler.buildDepError "comfort-blas")));
          buildable = true;
        };
      };
      tests = {
        "align-audio-test" = {
          depends = [
            (hsPkgs."comfort-fftw" or (errorHandler.buildDepError "comfort-fftw"))
            (hsPkgs."comfort-array" or (errorHandler.buildDepError "comfort-array"))
            (hsPkgs."storablevector" or (errorHandler.buildDepError "storablevector"))
            (hsPkgs."netlib-ffi" or (errorHandler.buildDepError "netlib-ffi"))
            (hsPkgs."Stream" or (errorHandler.buildDepError "Stream"))
            (hsPkgs."numeric-prelude" or (errorHandler.buildDepError "numeric-prelude"))
            (hsPkgs."doctest-exitcode-stdio" or (errorHandler.buildDepError "doctest-exitcode-stdio"))
            (hsPkgs."doctest-lib" or (errorHandler.buildDepError "doctest-lib"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ] ++ (if flags.lapack
            then [ (hsPkgs."lapack" or (errorHandler.buildDepError "lapack")) ]
            else pkgs.lib.optional (flags.blas) (hsPkgs."comfort-blas" or (errorHandler.buildDepError "comfort-blas")));
          buildable = true;
        };
      };
    };
  }