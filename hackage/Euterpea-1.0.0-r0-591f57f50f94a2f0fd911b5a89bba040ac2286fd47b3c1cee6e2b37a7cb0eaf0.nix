{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."markov-chain" or (errorHandler.buildDepError "markov-chain"))
          (hsPkgs."CCA" or (errorHandler.buildDepError "CCA"))
          (hsPkgs."UISF" or (errorHandler.buildDepError "UISF"))
          (hsPkgs."PortMidi" or (errorHandler.buildDepError "PortMidi"))
          (hsPkgs."HCodecs" or (errorHandler.buildDepError "HCodecs"))
          (hsPkgs."heap" or (errorHandler.buildDepError "heap"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."monadIO" or (errorHandler.buildDepError "monadIO"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."pure-fft" or (errorHandler.buildDepError "pure-fft"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."arrows" or (errorHandler.buildDepError "arrows"))
          ] ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).ge "6.10") [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          ];
        buildable = true;
        };
      tests = {
        "test-euterpea" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Euterpea" or (errorHandler.buildDepError "Euterpea"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            ];
          buildable = true;
          };
        };
      };
    }