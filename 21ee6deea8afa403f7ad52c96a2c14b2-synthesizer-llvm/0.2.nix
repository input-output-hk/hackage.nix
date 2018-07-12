{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      buildexamples = false;
      buildtests = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "synthesizer-llvm";
          version = "0.2";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann <haskell@henning-thielemann.de>";
        homepage = "http://www.haskell.org/haskellwiki/Synthesizer";
        url = "http://code.haskell.org/synthesizer/llvm/";
        synopsis = "Efficient signal processing using runtime compilation";
        description = "Efficient signal processing\nusing runtime compilation and vector instructions.\nIt uses LLVM library, thus it is not bound to a specific CPU.\nIf you compile with Cabal flag @buildExamples@\nyou get the executable @synthi-llvm-server@,\nthat is a realtime software synthesizer\nthat receives MIDI events via ALSA\nand in response plays some tones via ALSA.";
        buildType = "Simple";
      };
      components = {
        "synthesizer-llvm" = {
          depends  = [
            hsPkgs.llvm-extra
            hsPkgs.llvm-ht
            hsPkgs.type-level
            hsPkgs.functional-arrow
            hsPkgs.HList
            hsPkgs.synthesizer-core
            hsPkgs.synthesizer-alsa
            hsPkgs.alsa-seq
            hsPkgs.alsa-pcm
            hsPkgs.midi
            hsPkgs.storable-record
            hsPkgs.storable-tuple
            hsPkgs.sox
            hsPkgs.sample-frame-np
            hsPkgs.sample-frame
            hsPkgs.storablevector
            hsPkgs.numeric-prelude
            hsPkgs.non-negative
            hsPkgs.event-list
            hsPkgs.random
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.utility-ht
            hsPkgs.base
          ];
        };
        exes = {
          "synthi-llvm-example" = {};
          "synthi-llvm-server" = {};
          "synthi-llvm-test" = {
            depends  = pkgs.lib.optional _flags.buildtests hsPkgs.QuickCheck;
          };
        };
      };
    }