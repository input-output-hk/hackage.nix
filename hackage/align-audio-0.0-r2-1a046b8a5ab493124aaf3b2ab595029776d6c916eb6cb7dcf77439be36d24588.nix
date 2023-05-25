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
    flags = { blas = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "align-audio"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "";
      url = "";
      synopsis = "Find relative time displacement of two recordings of the same music";
      description = "Say, you have a video with some background music\nand a clean recording of the background music.\nYou want to know exact displacement of the background music.\nThis program should find it.\n\n> align-audio orig.wav video.wav\n\nThe program actually performs a simple correlation.\n\nThe program can handle sources of different sample rates\nif the sample rates are integers.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "align-audio" = {
          depends = [
            (hsPkgs."comfort-fftw" or (errorHandler.buildDepError "comfort-fftw"))
            (hsPkgs."comfort-array" or (errorHandler.buildDepError "comfort-array"))
            (hsPkgs."netlib-ffi" or (errorHandler.buildDepError "netlib-ffi"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."Stream" or (errorHandler.buildDepError "Stream"))
            (hsPkgs."storablevector" or (errorHandler.buildDepError "storablevector"))
            (hsPkgs."synthesizer-core" or (errorHandler.buildDepError "synthesizer-core"))
            (hsPkgs."soxlib" or (errorHandler.buildDepError "soxlib"))
            (hsPkgs."numeric-prelude" or (errorHandler.buildDepError "numeric-prelude"))
            (hsPkgs."shell-utility" or (errorHandler.buildDepError "shell-utility"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ] ++ (pkgs.lib).optional (flags.blas) (hsPkgs."lapack" or (errorHandler.buildDepError "lapack"));
          buildable = true;
          };
        };
      };
    }