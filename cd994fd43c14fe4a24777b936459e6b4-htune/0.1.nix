{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "htune";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "me@mornfall.net";
        author = "Petr Rockai";
        homepage = "";
        url = "";
        synopsis = "harmonic analyser and tuner for musical instruments";
        description = "A real-time, graphical analyser of frequency spectrums.\nReads audio data from ALSA and draws a spectrogram with\ntuning information for multiple frequency peaks. Draws\nusing gloss/opengl. Use mouse for panning & zooming.";
        buildType = "Simple";
      };
      components = {
        exes = {
          htune = {
            depends  = [
              hsPkgs.base
              hsPkgs.carray
              hsPkgs.fft
              hsPkgs.alsa-pcm
              hsPkgs.gloss
            ];
          };
        };
      };
    }