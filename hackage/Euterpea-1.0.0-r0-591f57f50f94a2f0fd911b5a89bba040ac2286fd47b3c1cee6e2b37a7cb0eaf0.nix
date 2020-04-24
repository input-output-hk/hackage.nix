{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "Euterpea"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2008-2015 Paul Hudak";
      maintainer = "Paul Hudak <paul.hudak@yale.edu>,\nDonya Quick <donya.quick@yale.edu>,\nDan Winograd-Cort <daniel.winograd-cort@yale.edu>,\nMark Santolucito <mark.santolucito@yale.edu>";
      author = "Paul Hudak <paul.hudak@yale.edu>,\nEric Cheng <eric.cheng@aya.yale.edu>,\nHai (Paul) Liu <hai.liu@aya.yale.edu>";
      homepage = "http://haskell.cs.yale.edu/";
      url = "";
      synopsis = "Library for computer music research and education";
      description = "Euterpea is a domain-specific language embedded in Haskell for\ncomputer music research, education, and development, providing\nboth note-level and signal-level abstractions.  It is a descendant\nof Haskore and HasSound, and is intended for both educational purposes\nas well as serious computer music applications.  Euterpea is a\nwide-spectrum DSL, suitable for high-level music representation,\nalgorithmic composition, and analysis; mid-level concepts such as\nMIDI; and low-level audio processing, sound synthesis, and instrument\ndesign.  It also includes a \"musical user interface,\" a set of\ncomputer-music specific GUI widgets such as keyboards, pushbuttons,\nsliders, and so on.  The performance of Euterpea is intended to be\nas good as any other computer music language, with the goal of being\nable to develop real-time applications, using both MIDI and a\nhigh-performance back-end for real-time audio.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."markov-chain" or ((hsPkgs.pkgs-errors).buildDepError "markov-chain"))
          (hsPkgs."CCA" or ((hsPkgs.pkgs-errors).buildDepError "CCA"))
          (hsPkgs."UISF" or ((hsPkgs.pkgs-errors).buildDepError "UISF"))
          (hsPkgs."PortMidi" or ((hsPkgs.pkgs-errors).buildDepError "PortMidi"))
          (hsPkgs."HCodecs" or ((hsPkgs.pkgs-errors).buildDepError "HCodecs"))
          (hsPkgs."heap" or ((hsPkgs.pkgs-errors).buildDepError "heap"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."monadIO" or ((hsPkgs.pkgs-errors).buildDepError "monadIO"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."pure-fft" or ((hsPkgs.pkgs-errors).buildDepError "pure-fft"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."arrows" or ((hsPkgs.pkgs-errors).buildDepError "arrows"))
          ] ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).ge "6.10") [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          ];
        buildable = true;
        };
      tests = {
        "test-euterpea" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Euterpea" or ((hsPkgs.pkgs-errors).buildDepError "Euterpea"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
            ];
          buildable = true;
          };
        };
      };
    }