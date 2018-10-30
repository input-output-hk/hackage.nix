{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "Euterpea";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2008-2015 Paul Hudak";
      maintainer = "Paul Hudak <paul.hudak@yale.edu>,\nDonya Quick <donya.quick@yale.edu>,\nDan Winograd-Cort <daniel.winograd-cort@yale.edu>,\nMark Santolucito <mark.santolucito@yale.edu>,\nAlex Reinking <alex.reinking@yale.edu>";
      author = "Paul Hudak <paul.hudak@yale.edu>,\nEric Cheng <eric.cheng@aya.yale.edu>,\nHai (Paul) Liu <hai.liu@aya.yale.edu>";
      homepage = "http://haskell.cs.yale.edu/";
      url = "";
      synopsis = "Library for computer music research and education";
      description = "Euterpea is a domain-specific language embedded in Haskell for\ncomputer music research, education, and development, providing\nboth note-level and signal-level abstractions.  It is a descendant\nof Haskore and HasSound, and is intended for both educational purposes\nas well as serious computer music applications.  Euterpea is a\nwide-spectrum DSL, suitable for high-level music representation,\nalgorithmic composition, and analysis; mid-level concepts such as\nMIDI; and low-level audio processing, sound synthesis, and instrument\ndesign.  It also includes a \"musical user interface,\" a set of\ncomputer-music specific GUI widgets such as keyboards, pushbuttons,\nsliders, and so on.  The performance of Euterpea is intended to be\nas good as any other computer music language, with the goal of being\nable to develop real-time applications, using both MIDI and a\nhigh-performance back-end for real-time audio.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.bytestring)
          (hsPkgs.random)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.markov-chain)
          (hsPkgs.CCA)
          (hsPkgs.UISF)
          (hsPkgs.PortMidi)
          (hsPkgs.HCodecs)
          (hsPkgs.heap)
          (hsPkgs.template-haskell)
          (hsPkgs.monadIO)
          (hsPkgs.deepseq)
          (hsPkgs.pure-fft)
          (hsPkgs.stm)
          (hsPkgs.arrows)
        ] ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.ge "6.10") [
          (hsPkgs.base)
          (hsPkgs.syb)
          (hsPkgs.ghc-prim)
        ];
      };
      tests = {
        "test-euterpea" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Euterpea)
            (hsPkgs.QuickCheck)
            (hsPkgs.Cabal)
            (hsPkgs.ansi-terminal)
          ];
        };
      };
    };
  }