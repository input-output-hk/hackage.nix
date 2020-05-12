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
      specVersion = "0";
      identifier = { name = "alsa-midi"; version = "0.3"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Soenke Hahn";
      homepage = "http://open-projects.net/~shahn/index.php?seite=code";
      url = "";
      synopsis = "Bindings for the ALSA sequencer API (MIDI stuff)";
      description = "Bindings for the ALSA sequencer API (MIDI stuff)\nSince there is also\n<http://code.haskell.org/alsa/>\nwhich aims at a more complete interface to ALSA\nwe will no longer maintain this one.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."midi" or (errorHandler.buildDepError "midi"))
          (hsPkgs."event-list" or (errorHandler.buildDepError "event-list"))
          (hsPkgs."non-negative" or (errorHandler.buildDepError "non-negative"))
          ];
        libs = [ (pkgs."asound" or (errorHandler.sysDepError "asound")) ];
        buildable = true;
        };
      exes = {
        "playnote" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."midi" or (errorHandler.buildDepError "midi"))
            (hsPkgs."event-list" or (errorHandler.buildDepError "event-list"))
            (hsPkgs."non-negative" or (errorHandler.buildDepError "non-negative"))
            ];
          libs = [ (pkgs."asound" or (errorHandler.sysDepError "asound")) ];
          buildable = true;
          };
        "playmidi" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."midi" or (errorHandler.buildDepError "midi"))
            (hsPkgs."event-list" or (errorHandler.buildDepError "event-list"))
            (hsPkgs."non-negative" or (errorHandler.buildDepError "non-negative"))
            ];
          libs = [ (pkgs."asound" or (errorHandler.sysDepError "asound")) ];
          buildable = true;
          };
        "mididump" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."midi" or (errorHandler.buildDepError "midi"))
            (hsPkgs."event-list" or (errorHandler.buildDepError "event-list"))
            (hsPkgs."non-negative" or (errorHandler.buildDepError "non-negative"))
            ];
          libs = [ (pkgs."asound" or (errorHandler.sysDepError "asound")) ];
          buildable = true;
          };
        };
      };
    }