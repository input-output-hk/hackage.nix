{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pitchtrack";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "(c) 2015 Lorenzo Tabacchini";
        maintainer = "lortabac@gmx.com";
        author = "Lorenzo Tabacchini";
        homepage = "";
        url = "";
        synopsis = "Pitch tracking library";
        description = "Pitch tracking library, based on <http://www.schmittmachine.com/dywapitchtrack.html dywapitchtrack>.\n\nSee the \"PitchTrack\" module for an easy, \"ready to use\" interface,\nor \"PitchTrack.Pipes\" for Pipes-based components, if you need more flexibility.\n\nNote that because all parameters are hard-coded into the C library,\nyou are limited to the following audio configuration:\n\n* raw (headerless) format\n\n* a sampling rate of 44100Hz,\n\n* a sample size of @sizeof(double)@\n\n* floating-point encoding\n\n* one channel (mono)";
        buildType = "Simple";
      };
      components = {
        pitchtrack = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.dywapitchtrack
            hsPkgs.pipes
            hsPkgs.pipes-bytestring
            hsPkgs.process
            hsPkgs.transformers
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.dywapitchtrack
              hsPkgs.hspec
              hsPkgs.pipes
              hsPkgs.pipes-bytestring
              hsPkgs.process
              hsPkgs.transformers
            ];
          };
        };
      };
    }