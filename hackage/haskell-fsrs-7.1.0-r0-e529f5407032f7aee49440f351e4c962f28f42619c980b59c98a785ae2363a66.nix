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
      specVersion = "2.2";
      identifier = { name = "haskell-fsrs"; version = "7.1.0"; };
      license = "MIT";
      copyright = "2026 © Flavio Corpa Ríos";
      maintainer = "https://github.com/kutyel/haskell-fsrs/issues";
      author = "Flavio Corpa";
      homepage = "https://github.com/kutyel/haskell-fsrs#readme";
      url = "";
      synopsis = "FSRS-7, the Free Spaced Repetition Scheduler";
      description = "A Haskell implementation of FSRS-7, the seventh version of the Free Spaced\nRepetition Scheduler: a memory model that predicts when you are about to\nforget a flashcard, so it can be shown to you just before that happens.\n\nThe model itself lives in \"FSRS.Algorithm\" and is a direct transcription of\nthe finished FSRS-7 reference implementation. A card scheduler built on top\nof it — learning steps, due dates, lapses, fuzz — lives in\n\"FSRS.Scheduler\". Import \"FSRS\" for everything at once.\n\nFSRS-7 has 34 weights and tracks two memory traces per card; see the\nchangelog if you are upgrading from 7.0.0, which implemented an earlier\n35-weight draft.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
      exes = {
        "haskell-fsrs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell-fsrs" or (errorHandler.buildDepError "haskell-fsrs"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
      };
      tests = {
        "haskell-fsrs-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell-fsrs" or (errorHandler.buildDepError "haskell-fsrs"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
      };
    };
  }