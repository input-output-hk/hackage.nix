{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
      optimizeadvanced = false;
      buildexamples = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "synthesizer-alsa";
          version = "0.5";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann <haskell@henning-thielemann.de>";
        homepage = "http://www.haskell.org/haskellwiki/Synthesizer";
        url = "";
        synopsis = "Control synthesizer effects via ALSA/MIDI";
        description = "This package allows to read MIDI events\nand to convert them to control signals\nthat can be used for audio effects.\nAs demonstration there is a keyboard controlled music synthesizer.";
        buildType = "Simple";
      };
      components = {
        synthesizer-alsa = {
          depends  = [
            hsPkgs.synthesizer-midi
            hsPkgs.synthesizer-dimensional
            hsPkgs.synthesizer-core
            hsPkgs.midi-alsa
            hsPkgs.midi
            hsPkgs.sox
            hsPkgs.alsa-seq
            hsPkgs.alsa-pcm
            hsPkgs.alsa-core
            hsPkgs.storablevector
            hsPkgs.numeric-prelude
            hsPkgs.non-negative
            hsPkgs.event-list
            hsPkgs.transformers
            hsPkgs.utility-ht
          ] ++ (if _flags.splitbase
            then [
              hsPkgs.random
              hsPkgs.old-time
              hsPkgs.base
            ]
            else [ hsPkgs.base ]);
        };
        exes = {
          realtimesynth = {};
          synthicate = {};
        };
      };
    }