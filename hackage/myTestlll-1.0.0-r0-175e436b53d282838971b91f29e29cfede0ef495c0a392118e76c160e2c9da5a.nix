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
      identifier = { name = "myTestlll"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2008-2014 Paul Hudak";
      maintainer = "Mark Santolucito <mark.santolucito@yale.edu>, ";
      author = "Mark Santolucito <mark.santolucito@yale.edu>, ";
      homepage = "http://haskell.cs.yale.edu/";
      url = "";
      synopsis = "testign upload";
      description = "high-performance back-end for real-time audio.  ";
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
        ] ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.ge "6.10") [
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