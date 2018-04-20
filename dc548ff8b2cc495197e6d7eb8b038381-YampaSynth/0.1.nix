{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      wav = true;
      openal = true;
      gtk = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "YampaSynth";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2007-2010 George Giorgidze and Henrik Nilsson";
        maintainer = "George Giorgidze (GGG at CS dot NOTT dot AC dot UK)";
        author = "George Giorgidze and Henrik Nilsson";
        homepage = "http://www.cs.nott.ac.uk/~ggg/";
        url = "";
        synopsis = "Software synthesizer";
        description = "YampaSynth is a software synthesizer implemented in Yampa, domain specific language embedded in Haskell. It contains a little framework of sound generating and sound shaping modules (e.g. oscillator, amplifier, mixer, envelope generator, filter, etc.) and example applications:\n\n* \"yampasynth-wav\" is an application which synthesizes a MIDI music and writes result into a WAVE audio file.\n\n* \"yampasynth-openal\" is an application which synthesizes a MIDI music and sends audio data in real-time to a sound card. We use Haskell binding of OpenAL library as an interface to audio hardware.\n\n* \"yampasynth-gtk\" is an application with the simple graphical user interface which allows you to play a music with various instruments in real-time using the keyboard of your computer. We use Haskell binding of GTK library for GUI programming and Haskell binding of OpenAL library as an interface to audio hardware.\n\nSoftware synthesizer uses the MIDI standard as a music description and the SoundFont standard as an instrument description.\n\nImplementation is based on the paper \"Switched-on Yampa: Declarative Programming of Modular Synthesizers\", by George Giorgidze and Henrik Nilsson (<http://www.cs.nott.ac.uk/~ggg/publications/padl2008.pdf>), In Proceedings of 10th International Symposium on Practical Aspects of Declarative Languages, San Francisco, CA, USA, January 7-8, 2008.\n\nThis is mainly a proof of concept, but already useful to some extent.";
        buildType = "Simple";
      };
      components = {
        exes = {
          yampasynth-wav = {
            depends  = pkgs.lib.optionals _flags.wav [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.Yampa
              hsPkgs.HCodecs
            ];
          };
          yampasynth-openal = {
            depends  = pkgs.lib.optionals _flags.openal [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.OpenAL
              hsPkgs.Yampa
              hsPkgs.HCodecs
            ];
          };
          yampasynth-gtk = {
            depends  = pkgs.lib.optionals _flags.gtk [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.OpenAL
              hsPkgs.glade
              hsPkgs.gtk
              hsPkgs.Yampa
              hsPkgs.HCodecs
            ];
          };
        };
      };
    }