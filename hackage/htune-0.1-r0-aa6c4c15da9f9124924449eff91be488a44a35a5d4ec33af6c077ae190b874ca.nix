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
      specVersion = "1.6";
      identifier = { name = "htune"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "me@mornfall.net";
      author = "Petr Rockai";
      homepage = "";
      url = "";
      synopsis = "harmonic analyser and tuner for musical instruments";
      description = "A real-time, graphical analyser of frequency spectrums.\nReads audio data from ALSA and draws a spectrogram with\ntuning information for multiple frequency peaks. Draws\nusing gloss/opengl. Use mouse for panning & zooming.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "htune" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."carray" or (errorHandler.buildDepError "carray"))
            (hsPkgs."fft" or (errorHandler.buildDepError "fft"))
            (hsPkgs."alsa-pcm" or (errorHandler.buildDepError "alsa-pcm"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
          ];
          buildable = true;
        };
      };
    };
  }