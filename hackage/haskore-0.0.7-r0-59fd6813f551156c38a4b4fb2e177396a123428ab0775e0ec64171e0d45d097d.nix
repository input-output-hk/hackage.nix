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
    flags = { splitbase = true; buildtests = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "haskore"; version = "0.0.7"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskore@henning-thielemann.de>";
      author = "Paul Hudak <paul.hudak@yale.edu>, Henning Thielemann";
      homepage = "http://www.haskell.org/haskellwiki/Haskore";
      url = "";
      synopsis = "The Haskore Computer Music System";
      description = "Compose music using programming features.\nOutput in MIDI, CSound, SuperCollider or as an audio signal.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."event-list" or (errorHandler.buildDepError "event-list"))
          (hsPkgs."midi" or (errorHandler.buildDepError "midi"))
          (hsPkgs."markov-chain" or (errorHandler.buildDepError "markov-chain"))
          (hsPkgs."non-negative" or (errorHandler.buildDepError "non-negative"))
          (hsPkgs."data-accessor" or (errorHandler.buildDepError "data-accessor"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."haskell-src" or (errorHandler.buildDepError "haskell-src"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          ] ++ (if flags.splitbase
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."special-functors" or (errorHandler.buildDepError "special-functors"))
            ]);
        buildable = true;
        };
      exes = {
        "test" = { buildable = if !flags.buildtests then false else true; };
        "autotrack" = { buildable = true; };
        };
      };
    }