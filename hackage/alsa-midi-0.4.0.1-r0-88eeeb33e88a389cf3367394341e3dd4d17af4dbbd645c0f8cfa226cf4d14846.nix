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
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "alsa-midi"; version = "0.4.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Soenke Hahn";
      homepage = "http://www.haskell.org/haskellwiki/ALSA";
      url = "http://code.haskell.org/~thielema/alsa-midi/";
      synopsis = "Bindings for the ALSA sequencer API (MIDI stuff)";
      description = "Bindings for the ALSA sequencer API (MIDI stuff)\n\nThere are now the packages @alsa-pcm@ and @alsa-seq@\nthat aim at a more complete interface to ALSA.\nThus we will no longer maintain this package.\n\nSee \"Sound.ALSA.Sequencer.Play\" for how to play Haskore songs in realtime via ALSA.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."midi" or (errorHandler.buildDepError "midi"))
          (hsPkgs."event-list" or (errorHandler.buildDepError "event-list"))
          (hsPkgs."non-negative" or (errorHandler.buildDepError "non-negative"))
        ] ++ (if flags.splitbase
          then [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        libs = [ (pkgs."asound" or (errorHandler.sysDepError "asound")) ];
        buildable = true;
      };
      exes = {
        "playnote" = {
          libs = [ (pkgs."asound" or (errorHandler.sysDepError "asound")) ];
          buildable = true;
        };
        "playmidi" = {
          libs = [ (pkgs."asound" or (errorHandler.sysDepError "asound")) ];
          buildable = true;
        };
        "mididump" = {
          libs = [ (pkgs."asound" or (errorHandler.sysDepError "asound")) ];
          buildable = true;
        };
      };
    };
  }