{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "reactive-jack";
        version = "0.3";
      };
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
          (hsPkgs.reactive-midyim)
          (hsPkgs.reactive-banana)
          (hsPkgs.midi)
          (hsPkgs.jack)
          (hsPkgs.event-list)
          (hsPkgs.non-negative)
          (hsPkgs.data-accessor)
          (hsPkgs.utility-ht)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.explicit-exception)
          (hsPkgs.extensible-exceptions)
          (hsPkgs.random)
          (hsPkgs.base)
        ];
      };
    };
  }