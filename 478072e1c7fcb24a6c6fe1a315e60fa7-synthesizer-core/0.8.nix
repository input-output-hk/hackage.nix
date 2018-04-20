{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      optimizeadvanced = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.14";
        identifier = {
          name = "synthesizer-core";
          version = "0.8";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann <haskell@henning-thielemann.de>";
        homepage = "http://www.haskell.org/haskellwiki/Synthesizer";
        url = "";
        synopsis = "Audio signal processing coded in Haskell: Low level part";
        description = "Low level audio signal processing\nused by the other synthesizer packages.\nThe routines can be really fast\ndue to StorableVector, Stream-like list type and aggressive inlining.\nFor an interface to Haskore see <http://code.haskell.org/haskore/revised/synthesizer/>.\nFor introductory examples see \"Synthesizer.Plain.Tutorial\"\nand \"Synthesizer.Generic.Tutorial\".\n\nFunctions:\nOscillators, Noise generators, Frequency filters,\nFast Fourier transform for computation of frequency spectrum";
        buildType = "Simple";
      };
      components = {
        synthesizer-core = {
          depends  = [
            hsPkgs.sample-frame-np
            hsPkgs.sox
            hsPkgs.transformers
            hsPkgs.non-empty
            hsPkgs.event-list
            hsPkgs.non-negative
            hsPkgs.explicit-exception
            hsPkgs.numeric-prelude
            hsPkgs.numeric-quest
            hsPkgs.utility-ht
            hsPkgs.filepath
            hsPkgs.bytestring
            hsPkgs.binary
            hsPkgs.deepseq
            hsPkgs.storablevector
            hsPkgs.storable-record
            hsPkgs.storable-tuple
            hsPkgs.QuickCheck
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.random
            hsPkgs.process
            hsPkgs.base
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.synthesizer-core
              hsPkgs.storablevector
              hsPkgs.storable-tuple
              hsPkgs.event-list
              hsPkgs.non-empty
              hsPkgs.non-negative
              hsPkgs.utility-ht
              hsPkgs.numeric-prelude
              hsPkgs.QuickCheck
              hsPkgs.random
              hsPkgs.containers
              hsPkgs.base
            ];
          };
        };
        benchmarks = {
          fouriertest = {
            depends  = [
              hsPkgs.synthesizer-core
              hsPkgs.numeric-prelude
              hsPkgs.timeit
              hsPkgs.storablevector
              hsPkgs.storable-tuple
              hsPkgs.utility-ht
              hsPkgs.base
            ];
          };
          speedtest = {
            depends  = [
              hsPkgs.synthesizer-core
              hsPkgs.numeric-prelude
              hsPkgs.old-time
              hsPkgs.directory
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.utility-ht
              hsPkgs.base
            ];
          };
          speedtest-exp = {
            depends  = [
              hsPkgs.synthesizer-core
              hsPkgs.storablevector
              hsPkgs.old-time
              hsPkgs.directory
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.array
              hsPkgs.base
            ];
          };
          speedtest-simple = {
            depends  = [
              hsPkgs.synthesizer-core
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.old-time
              hsPkgs.base
            ];
          };
        };
      };
    }