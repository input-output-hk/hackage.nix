{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."midi" or ((hsPkgs.pkgs-errors).buildDepError "midi"))
          (hsPkgs."event-list" or ((hsPkgs.pkgs-errors).buildDepError "event-list"))
          (hsPkgs."non-negative" or ((hsPkgs.pkgs-errors).buildDepError "non-negative"))
          ];
        libs = [
          (pkgs."asound" or ((hsPkgs.pkgs-errors).sysDepError "asound"))
          ];
        buildable = true;
        };
      exes = {
        "playnote" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."midi" or ((hsPkgs.pkgs-errors).buildDepError "midi"))
            (hsPkgs."event-list" or ((hsPkgs.pkgs-errors).buildDepError "event-list"))
            (hsPkgs."non-negative" or ((hsPkgs.pkgs-errors).buildDepError "non-negative"))
            ];
          libs = [
            (pkgs."asound" or ((hsPkgs.pkgs-errors).sysDepError "asound"))
            ];
          buildable = true;
          };
        "playmidi" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."midi" or ((hsPkgs.pkgs-errors).buildDepError "midi"))
            (hsPkgs."event-list" or ((hsPkgs.pkgs-errors).buildDepError "event-list"))
            (hsPkgs."non-negative" or ((hsPkgs.pkgs-errors).buildDepError "non-negative"))
            ];
          libs = [
            (pkgs."asound" or ((hsPkgs.pkgs-errors).sysDepError "asound"))
            ];
          buildable = true;
          };
        "mididump" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."midi" or ((hsPkgs.pkgs-errors).buildDepError "midi"))
            (hsPkgs."event-list" or ((hsPkgs.pkgs-errors).buildDepError "event-list"))
            (hsPkgs."non-negative" or ((hsPkgs.pkgs-errors).buildDepError "non-negative"))
            ];
          libs = [
            (pkgs."asound" or ((hsPkgs.pkgs-errors).sysDepError "asound"))
            ];
          buildable = true;
          };
        };
      };
    }