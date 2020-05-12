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
    flags = { splitbase = true; buildexamples = false; buildtests = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "synthesizer-midi"; version = "0.5"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Synthesizer";
      url = "";
      synopsis = "Render audio signals from MIDI files or realtime messages";
      description = "This package allows to read MIDI events\nand to convert them to audio and control signals.\nIncluded is a basic synthesizer that renders MIDI to WAV\n(or other audio signal formats supported by SoX).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."synthesizer-dimensional" or (errorHandler.buildDepError "synthesizer-dimensional"))
          (hsPkgs."synthesizer-core" or (errorHandler.buildDepError "synthesizer-core"))
          (hsPkgs."sox" or (errorHandler.buildDepError "sox"))
          (hsPkgs."midi" or (errorHandler.buildDepError "midi"))
          (hsPkgs."storable-record" or (errorHandler.buildDepError "storable-record"))
          (hsPkgs."storablevector" or (errorHandler.buildDepError "storablevector"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."numeric-prelude" or (errorHandler.buildDepError "numeric-prelude"))
          (hsPkgs."non-negative" or (errorHandler.buildDepError "non-negative"))
          (hsPkgs."event-list" or (errorHandler.buildDepError "event-list"))
          (hsPkgs."data-accessor-transformers" or (errorHandler.buildDepError "data-accessor-transformers"))
          (hsPkgs."data-accessor" or (errorHandler.buildDepError "data-accessor"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          ] ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      exes = {
        "render-midi" = {
          buildable = if !flags.buildexamples then false else true;
          };
        "test" = { buildable = if !flags.buildtests then false else true; };
        };
      };
    }