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
    flags = { optimizeadvanced = false; buildexamples = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "synthesizer-alsa"; version = "0.5.0.6"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Synthesizer";
      url = "";
      synopsis = "Control synthesizer effects via ALSA/MIDI";
      description = "This package allows to read MIDI events\nand to convert them to control signals\nthat can be used for audio effects.\nAs demonstration there is a keyboard controlled music synthesizer.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."synthesizer-midi" or (errorHandler.buildDepError "synthesizer-midi"))
          (hsPkgs."synthesizer-dimensional" or (errorHandler.buildDepError "synthesizer-dimensional"))
          (hsPkgs."synthesizer-core" or (errorHandler.buildDepError "synthesizer-core"))
          (hsPkgs."midi-alsa" or (errorHandler.buildDepError "midi-alsa"))
          (hsPkgs."midi" or (errorHandler.buildDepError "midi"))
          (hsPkgs."sox" or (errorHandler.buildDepError "sox"))
          (hsPkgs."alsa-seq" or (errorHandler.buildDepError "alsa-seq"))
          (hsPkgs."alsa-pcm" or (errorHandler.buildDepError "alsa-pcm"))
          (hsPkgs."alsa-core" or (errorHandler.buildDepError "alsa-core"))
          (hsPkgs."storablevector" or (errorHandler.buildDepError "storablevector"))
          (hsPkgs."numeric-prelude" or (errorHandler.buildDepError "numeric-prelude"))
          (hsPkgs."non-negative" or (errorHandler.buildDepError "non-negative"))
          (hsPkgs."event-list" or (errorHandler.buildDepError "event-list"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "realtimesynth" = {
          depends = [
            (hsPkgs."synthesizer-alsa" or (errorHandler.buildDepError "synthesizer-alsa"))
            (hsPkgs."synthesizer-midi" or (errorHandler.buildDepError "synthesizer-midi"))
            (hsPkgs."synthesizer-core" or (errorHandler.buildDepError "synthesizer-core"))
            (hsPkgs."midi" or (errorHandler.buildDepError "midi"))
            (hsPkgs."sox" or (errorHandler.buildDepError "sox"))
            (hsPkgs."alsa-seq" or (errorHandler.buildDepError "alsa-seq"))
            (hsPkgs."alsa-pcm" or (errorHandler.buildDepError "alsa-pcm"))
            (hsPkgs."storablevector" or (errorHandler.buildDepError "storablevector"))
            (hsPkgs."numeric-prelude" or (errorHandler.buildDepError "numeric-prelude"))
            (hsPkgs."non-negative" or (errorHandler.buildDepError "non-negative"))
            (hsPkgs."event-list" or (errorHandler.buildDepError "event-list"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "synthicate" = {
          depends = [
            (hsPkgs."synthesizer-alsa" or (errorHandler.buildDepError "synthesizer-alsa"))
            (hsPkgs."synthesizer-midi" or (errorHandler.buildDepError "synthesizer-midi"))
            (hsPkgs."synthesizer-dimensional" or (errorHandler.buildDepError "synthesizer-dimensional"))
            (hsPkgs."synthesizer-core" or (errorHandler.buildDepError "synthesizer-core"))
            (hsPkgs."midi" or (errorHandler.buildDepError "midi"))
            (hsPkgs."alsa-seq" or (errorHandler.buildDepError "alsa-seq"))
            (hsPkgs."alsa-pcm" or (errorHandler.buildDepError "alsa-pcm"))
            (hsPkgs."storablevector" or (errorHandler.buildDepError "storablevector"))
            (hsPkgs."numeric-prelude" or (errorHandler.buildDepError "numeric-prelude"))
            (hsPkgs."event-list" or (errorHandler.buildDepError "event-list"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        };
      };
    }