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
      identifier = { name = "alsa-midi"; version = "0.3.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Soenke Hahn";
      homepage = "http://www.haskell.org/haskellwiki/ALSA";
      url = "http://darcs.haskell.org/alsa-midi/";
      synopsis = "Bindings for the ALSA sequencer API (MIDI stuff)";
      description = "Bindings for the ALSA sequencer API (MIDI stuff)\nSince there is also\n<http://code.haskell.org/alsa/>\nwhich aims at a more complete interface to ALSA\nwe will no longer maintain this one.\n\nSee \"Sound.ALSA.Sequencer.Play\" for how to play Haskore songs in realtime via ALSA.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."midi" or (errorHandler.buildDepError "midi"))
          (hsPkgs."event-list" or (errorHandler.buildDepError "event-list"))
          (hsPkgs."non-negative" or (errorHandler.buildDepError "non-negative"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ] ++ (if flags.splitbase
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
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