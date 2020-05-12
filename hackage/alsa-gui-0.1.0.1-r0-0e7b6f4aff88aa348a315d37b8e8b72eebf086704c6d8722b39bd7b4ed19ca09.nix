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
      specVersion = "1.8";
      identifier = { name = "alsa-gui"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <alsa@henning-thielemann.de>";
      author = "Henning Thielemann <alsa@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/ALSA";
      url = "";
      synopsis = "Some simple interactive programs for sending MIDI control messages via ALSA";
      description = "Some simple interactive programs for sending MIDI control messages via ALSA.\nThe GUI uses wxHaskell.\nCurrently we provide these programs:\n\n* Send @All Notes Off@ and @All Sounds Off@ events.\n\n* Show several sliders, that trigger sending MIDI controller messages.\n\n* Show a list widget, that triggers MIDI program changes.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "alsa-midi-mode" = {
          depends = [
            (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
            (hsPkgs."wxcore" or (errorHandler.buildDepError "wxcore"))
            (hsPkgs."midi-alsa" or (errorHandler.buildDepError "midi-alsa"))
            (hsPkgs."midi" or (errorHandler.buildDepError "midi"))
            (hsPkgs."alsa-seq" or (errorHandler.buildDepError "alsa-seq"))
            (hsPkgs."alsa-core" or (errorHandler.buildDepError "alsa-core"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        "alsa-midi-program" = {
          depends = [
            (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
            (hsPkgs."wxcore" or (errorHandler.buildDepError "wxcore"))
            (hsPkgs."alsa-seq" or (errorHandler.buildDepError "alsa-seq"))
            (hsPkgs."alsa-core" or (errorHandler.buildDepError "alsa-core"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        "alsa-midi-controller" = {
          depends = [
            (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
            (hsPkgs."wxcore" or (errorHandler.buildDepError "wxcore"))
            (hsPkgs."alsa-seq" or (errorHandler.buildDepError "alsa-seq"))
            (hsPkgs."alsa-core" or (errorHandler.buildDepError "alsa-core"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }