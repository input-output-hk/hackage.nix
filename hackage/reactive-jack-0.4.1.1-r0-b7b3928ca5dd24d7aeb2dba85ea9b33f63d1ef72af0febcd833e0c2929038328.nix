{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "reactive-jack"; version = "0.4.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Reactive-balsa";
      url = "";
      synopsis = "Process MIDI events via reactive-banana and JACK";
      description = "MIDI is the Musical Instrument Digital Interface,\nJACK is the JACK Audio Connection Kit.\nThis package allows to manipulate a sequence of MIDI events via JACK.\nIt is intended to be plugged as a playing assistant\nbetween a MIDI input device\n(e.g. a keyboard or a controller bank)\nand a MIDI controlled synthesizer\n(e.g. a software synthesizer or an external synthesizer).\nFor software synthesizers see the Haskell packages\n@synthesizer-alsa@, @synthesizer-llvm@, @supercollider-midi@,\n@hsc3@, @YampaSynth@\nor the C packages @fluidsynth@ and @Timidity@.\n\nApplications include:\nRemapping of channels, controller, instruments, keys,\nKeyboard splitting, Conversion from notes to controllers, Latch mode,\nConvert parallel chords to serial patterns,\nAutomated change of MIDI controllers,\nDelay and echo.\n\nIt is intended that you write programs for MIDI stream manipulation.\nIt is not intended to provide an executable program\nwith all the functionality available\nin a custom programming interface.\nIt is most fun to play with the stream editors in GHCi.\nHowever we provide an example module that demonstrates various effects.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."reactive-midyim" or ((hsPkgs.pkgs-errors).buildDepError "reactive-midyim"))
          (hsPkgs."reactive-banana-bunch" or ((hsPkgs.pkgs-errors).buildDepError "reactive-banana-bunch"))
          (hsPkgs."midi" or ((hsPkgs.pkgs-errors).buildDepError "midi"))
          (hsPkgs."jack" or ((hsPkgs.pkgs-errors).buildDepError "jack"))
          (hsPkgs."event-list" or ((hsPkgs.pkgs-errors).buildDepError "event-list"))
          (hsPkgs."non-negative" or ((hsPkgs.pkgs-errors).buildDepError "non-negative"))
          (hsPkgs."data-accessor" or ((hsPkgs.pkgs-errors).buildDepError "data-accessor"))
          (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."explicit-exception" or ((hsPkgs.pkgs-errors).buildDepError "explicit-exception"))
          (hsPkgs."extensible-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "extensible-exceptions"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }