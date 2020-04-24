{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "supercollider-midi"; version = "0.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/SuperCollider";
      url = "http://code.haskell.org/~thielema/supercollider-midi/";
      synopsis = "Demonstrate how to control SuperCollider via ALSA-MIDI";
      description = "Two small example programs where SuperCollider is controlled by MIDI.\n\n* Control parameters of a wind noise via MIDI controllers\n\n* Use UGens as instruments,\nwhich will be played upon MIDI messages that arrive through ALSA.\nThis way you can play MIDI files using @pmidi@\nor you can use your computer as MIDI expander controlled by a keyboard.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "sc-keyboard" = {
          depends = [
            (hsPkgs."supercollider-ht" or ((hsPkgs.pkgs-errors).buildDepError "supercollider-ht"))
            (hsPkgs."opensoundcontrol-ht" or ((hsPkgs.pkgs-errors).buildDepError "opensoundcontrol-ht"))
            (hsPkgs."hsc3" or ((hsPkgs.pkgs-errors).buildDepError "hsc3"))
            (hsPkgs."hosc" or ((hsPkgs.pkgs-errors).buildDepError "hosc"))
            (hsPkgs."alsa-seq" or ((hsPkgs.pkgs-errors).buildDepError "alsa-seq"))
            (hsPkgs."data-accessor" or ((hsPkgs.pkgs-errors).buildDepError "data-accessor"))
            (hsPkgs."midi-alsa" or ((hsPkgs.pkgs-errors).buildDepError "midi-alsa"))
            (hsPkgs."midi" or ((hsPkgs.pkgs-errors).buildDepError "midi"))
            (hsPkgs."event-list" or ((hsPkgs.pkgs-errors).buildDepError "event-list"))
            (hsPkgs."non-negative" or ((hsPkgs.pkgs-errors).buildDepError "non-negative"))
            (hsPkgs."data-accessor-transformers" or ((hsPkgs.pkgs-errors).buildDepError "data-accessor-transformers"))
            (hsPkgs."data-accessor" or ((hsPkgs.pkgs-errors).buildDepError "data-accessor"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            ] ++ (if flags.splitbase
            then [
              (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
              (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
              (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              ]
            else [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              ]);
          buildable = true;
          };
        "sc-wind" = {
          depends = [
            (hsPkgs."hsc3" or ((hsPkgs.pkgs-errors).buildDepError "hsc3"))
            (hsPkgs."hosc" or ((hsPkgs.pkgs-errors).buildDepError "hosc"))
            (hsPkgs."alsa-seq" or ((hsPkgs.pkgs-errors).buildDepError "alsa-seq"))
            (hsPkgs."data-accessor" or ((hsPkgs.pkgs-errors).buildDepError "data-accessor"))
            (hsPkgs."midi-alsa" or ((hsPkgs.pkgs-errors).buildDepError "midi-alsa"))
            (hsPkgs."midi" or ((hsPkgs.pkgs-errors).buildDepError "midi"))
            (hsPkgs."event-list" or ((hsPkgs.pkgs-errors).buildDepError "event-list"))
            (hsPkgs."non-negative" or ((hsPkgs.pkgs-errors).buildDepError "non-negative"))
            ] ++ [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }