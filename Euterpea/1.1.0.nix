{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "Euterpea";
          version = "1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2008-2015 Paul Hudak";
        maintainer = "Donya Quick <donya.quick@yale.edu>,\nDan Winograd-Cort <daniel.winograd-cort@yale.edu>,\nMark Santolucito <mark.santolucito@yale.edu>";
        author = "Paul Hudak <paul.hudak@yale.edu>,\nEric Cheng <eric.cheng@aya.yale.edu>,\nHai (Paul) Liu <hai.liu@aya.yale.edu>";
        homepage = "http://haskell.cs.yale.edu/";
        url = "";
        synopsis = "Library for computer music research and education";
        description = "Euterpea is a domain-specific language embedded in Haskell for\ncomputer music research, education, and development, providing\nboth note-level and signal-level abstractions.  It is a descendant\nof Haskore and HasSound, and is intended for both educational purposes\nas well as serious computer music applications.  Euterpea is a\nwide-spectrum DSL, suitable for high-level music representation,\nalgorithmic composition, and analysis; mid-level concepts such as\nMIDI; and low-level audio processing, sound synthesis, and instrument\ndesign.  It also includes a \"musical user interface,\" a set of\ncomputer-music specific GUI widgets such as keyboards, pushbuttons,\nsliders, and so on.  The performance of Euterpea is intended to be\nas good as any other computer music language, with the goal of being\nable to develop real-time applications, using both MIDI and a\nhigh-performance back-end for real-time audio.";
        buildType = "Custom";
      };
      components = {
        Euterpea = {
          depends  = [
            hsPkgs.base
            hsPkgs.arrows
            hsPkgs.array
            hsPkgs.deepseq
            hsPkgs.random
            hsPkgs.PortMidi
            hsPkgs.HCodecs
            hsPkgs.stm
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.heap
            hsPkgs.markov-chain
            hsPkgs.pure-fft
            hsPkgs.UISF
          ] ++ optionals compiler.isGhc [
            hsPkgs.base
            hsPkgs.ghc-prim
          ];
        };
        tests = {
          test-euterpea = {
            depends  = [
              hsPkgs.base
              hsPkgs.Euterpea
              hsPkgs.QuickCheck
              hsPkgs.Cabal
              hsPkgs.ansi-terminal
            ];
          };
        };
      };
    }