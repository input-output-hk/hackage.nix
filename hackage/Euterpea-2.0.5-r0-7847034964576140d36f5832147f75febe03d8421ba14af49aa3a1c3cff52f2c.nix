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
        version = "2.0.5";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2008-2017 Euterpea authors";
      maintainer = "Donya Quick <donyaquick@gmail.com>";
      author = "Paul Hudak <paul.hudak@yale.edu>,\nEric Cheng <eric.cheng@aya.yale.edu>,\nHai (Paul) Liu <hai.liu@aya.yale.edu>,\nDonya Quick <donyaquick@gmail.com>,\nDan Winograd-Cort <dwincort@gmail.com >";
      homepage = "http://www.euterpea.com";
      url = "";
      synopsis = "Library for computer music research and education";
      description = "Euterpea is a domain-specific language embedded in Haskell for\ncomputer music research, education, and development, providing\nboth note-level and signal-level abstractions.  It is a descendant\nof Haskore and HasSound, and is intended for both educational purposes\nas well as serious computer music applications.  Euterpea is a\nwide-spectrum DSL, suitable for high-level music representation,\nalgorithmic composition, and analysis; mid-level concepts such as\nMIDI; and low-level audio processing, sound synthesis, and instrument\ndesign.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.arrows)
          (hsPkgs.array)
          (hsPkgs.deepseq)
          (hsPkgs.random)
          (hsPkgs.PortMidi)
          (hsPkgs.HCodecs)
          (hsPkgs.stm)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.heap)
          (hsPkgs.ghc-prim)
        ];
      };
    };
  }