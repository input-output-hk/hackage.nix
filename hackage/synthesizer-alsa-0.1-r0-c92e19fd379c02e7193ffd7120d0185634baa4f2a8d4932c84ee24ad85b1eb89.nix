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
    flags = {
      splitbase = true;
      optimizeadvanced = false;
      buildexamples = false;
      };
    package = {
      specVersion = "1.2";
      identifier = { name = "synthesizer-alsa"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Synthesizer";
      url = "http://code.haskell.org/synthesizer/alsa/";
      synopsis = "Control synthesizer effects via ALSA/MIDI";
      description = "This package allows to read MIDI events\nand to convert them to control signals\nthat can be used for audio effects.\nAs demonstration there is a keyboard controlled music synthesizer.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."synthesizer-dimensional" or (errorHandler.buildDepError "synthesizer-dimensional"))
          (hsPkgs."synthesizer-core" or (errorHandler.buildDepError "synthesizer-core"))
          (hsPkgs."sox" or (errorHandler.buildDepError "sox"))
          (hsPkgs."alsa" or (errorHandler.buildDepError "alsa"))
          (hsPkgs."midi" or (errorHandler.buildDepError "midi"))
          (hsPkgs."storablevector" or (errorHandler.buildDepError "storablevector"))
          (hsPkgs."numeric-prelude" or (errorHandler.buildDepError "numeric-prelude"))
          (hsPkgs."non-negative" or (errorHandler.buildDepError "non-negative"))
          (hsPkgs."event-list" or (errorHandler.buildDepError "event-list"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          ] ++ (if flags.splitbase
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
        };
      exes = {
        "realtimesynth" = {
          buildable = if !flags.buildexamples then false else true;
          };
        "synthicate" = {
          buildable = if !flags.buildexamples then false else true;
          };
        };
      };
    }