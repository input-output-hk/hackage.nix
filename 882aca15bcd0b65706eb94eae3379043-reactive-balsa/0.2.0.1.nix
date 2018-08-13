{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      splitbase = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "reactive-balsa";
        version = "0.2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Reactive-balsa";
      url = "";
      synopsis = "Programmatically edit MIDI events via ALSA and reactive-banana";
      description = "MIDI is the Musical Instrument Digital Interface,\nALSA is the Advanced Linux Sound Architecture.\nThis package allows to manipulate a sequence of MIDI events via ALSA.\nIt is intended to be plugged as a playing assistant\nbetween a MIDI input device\n(e.g. a keyboard or a controller bank)\nand a MIDI controlled synthesizer\n(e.g. a software synthesizer or an external synthesizer).\nFor software synthesizers see the Haskell packages\n@synthesizer-alsa@, @synthesizer-llvm@, @supercollider-midi@,\n@hsc3@, @YampaSynth@\nor the C packages @fluidsynth@ and @Timidity@.\n\nApplications include:\nRemapping of channels, controller, instruments, keys,\nKeyboard splitting, Conversion from notes to controllers, Latch mode,\nConvert parallel chords to serial patterns,\nAutomated change of MIDI controllers,\nDelay and echo.\n\nIt is intended that you write programs for MIDI stream manipulation.\nIt is not intended to provide an executable program\nwith all the functionality available\nin a custom programming interface.\nIt is most fun to play with the stream editors in GHCi.\nHowever we provide an example module that demonstrates various effects.";
      buildType = "Simple";
    };
    components = {
      "reactive-balsa" = {
        depends  = [
          (hsPkgs.reactive-midyim)
          (hsPkgs.reactive-banana)
          (hsPkgs.midi-alsa)
          (hsPkgs.midi)
          (hsPkgs.alsa-seq)
          (hsPkgs.alsa-core)
          (hsPkgs.event-list)
          (hsPkgs.non-negative)
          (hsPkgs.data-accessor-transformers)
          (hsPkgs.data-accessor)
          (hsPkgs.utility-ht)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.extensible-exceptions)
        ] ++ (if _flags.splitbase
          then [
            (hsPkgs.random)
            (hsPkgs.base)
          ]
          else [ (hsPkgs.base) ]);
      };
    };
  }