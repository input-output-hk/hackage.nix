{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      splitbase = true;
      optimizeadvanced = false;
      buildexamples = false;
      buildtests = false;
      };
    package = {
      specVersion = "1.2";
      identifier = { name = "synthesizer-alsa"; version = "0.3"; };
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
          (hsPkgs."synthesizer-dimensional" or ((hsPkgs.pkgs-errors).buildDepError "synthesizer-dimensional"))
          (hsPkgs."synthesizer-core" or ((hsPkgs.pkgs-errors).buildDepError "synthesizer-core"))
          (hsPkgs."sox" or ((hsPkgs.pkgs-errors).buildDepError "sox"))
          (hsPkgs."midi-alsa" or ((hsPkgs.pkgs-errors).buildDepError "midi-alsa"))
          (hsPkgs."alsa-seq" or ((hsPkgs.pkgs-errors).buildDepError "alsa-seq"))
          (hsPkgs."alsa-pcm" or ((hsPkgs.pkgs-errors).buildDepError "alsa-pcm"))
          (hsPkgs."alsa-core" or ((hsPkgs.pkgs-errors).buildDepError "alsa-core"))
          (hsPkgs."midi" or ((hsPkgs.pkgs-errors).buildDepError "midi"))
          (hsPkgs."storablevector" or ((hsPkgs.pkgs-errors).buildDepError "storablevector"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."numeric-prelude" or ((hsPkgs.pkgs-errors).buildDepError "numeric-prelude"))
          (hsPkgs."non-negative" or ((hsPkgs.pkgs-errors).buildDepError "non-negative"))
          (hsPkgs."event-list" or ((hsPkgs.pkgs-errors).buildDepError "event-list"))
          (hsPkgs."data-accessor" or ((hsPkgs.pkgs-errors).buildDepError "data-accessor"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
          ] ++ (if flags.splitbase
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ]);
        buildable = true;
        };
      exes = {
        "realtimesynth" = {
          buildable = if !flags.buildexamples then false else true;
          };
        "synthicate" = {
          buildable = if !flags.buildexamples then false else true;
          };
        "test" = { buildable = if !flags.buildtests then false else true; };
        };
      };
    }