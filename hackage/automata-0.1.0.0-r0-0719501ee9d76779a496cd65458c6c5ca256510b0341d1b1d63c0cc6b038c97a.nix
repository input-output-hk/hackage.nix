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
      identifier = { name = "automata"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/automata";
      url = "";
      synopsis = "automata";
      description = "This package implements the following:\n\nDeterministic Finite State Automata (DFSA)\n\nNon-Deterministic Finite State Automata (NFSA)\n\nDeterministic Finite State Transducers (DFST)\n\nNon-Deterministic Finite State Transducers (NFST)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."primitive-containers" or (errorHandler.buildDepError "primitive-containers"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."contiguous" or (errorHandler.buildDepError "contiguous"))
          (hsPkgs."semirings" or (errorHandler.buildDepError "semirings"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."automata" or (errorHandler.buildDepError "automata"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."enum-types" or (errorHandler.buildDepError "enum-types"))
            (hsPkgs."leancheck" or (errorHandler.buildDepError "leancheck"))
            (hsPkgs."leancheck-enum-instances" or (errorHandler.buildDepError "leancheck-enum-instances"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."quickcheck-classes" or (errorHandler.buildDepError "quickcheck-classes"))
            (hsPkgs."quickcheck-enum-instances" or (errorHandler.buildDepError "quickcheck-enum-instances"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-leancheck" or (errorHandler.buildDepError "tasty-leancheck"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      };
    }