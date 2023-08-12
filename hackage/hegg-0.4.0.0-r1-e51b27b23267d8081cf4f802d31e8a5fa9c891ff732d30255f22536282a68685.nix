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
    flags = { vizdot = false; };
    package = {
      specVersion = "2.4";
      identifier = { name = "hegg"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2022 Rodrigo Mesquita";
      maintainer = "Rodrigo Mesquita <rodrigo.m.mesquita@gmail.com>";
      author = "Rodrigo Mesquita <romes>";
      homepage = "https://github.com/alt-romes/hegg";
      url = "";
      synopsis = "Fast equality saturation in Haskell";
      description = "Fast equality saturation and equality graphs based on \"egg:\nFast and Extensible Equality Saturation\" and \"Relational E-matching\".\n\nThis package provides e-graphs (see \"Data.Equality.Graph\"),\na data structure which efficiently represents a congruence\nrelation over many expressions.\n\nFor a monadic interface to e-graphs check out\n\"Data.Equality.Graph.Monad\" (home to the convenient\nfunction 'represent').\n\nSecondly, it provides functions for doing equality\nsaturation (see \"Data.Equality.Saturation\"), an\noptimization/term-rewriting technique that applies rewrite\nrules non-destructively to an expression represented in an\ne-graph until saturation, and then extracts the best\nrepresentation.\n\nEquality matching (see \"Data.Equality.Matching\") is done as\ndescribed in \"Relational E-Matching\"\n\nFor a walkthrough of writing a simple symbolic\nsimplification program see the [hegg symbolic\ntutorial](https://github.com/alt-romes/hegg#equality-saturation-in-haskell).\n\nAdditional information can be found [in the README](https://github.com/alt-romes/hegg).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ] ++ (pkgs.lib).optional (flags.vizdot) (hsPkgs."graphviz" or (errorHandler.buildDepError "graphviz"));
        buildable = true;
        };
      tests = {
        "hegg-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hegg" or (errorHandler.buildDepError "hegg"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "hegg-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hegg" or (errorHandler.buildDepError "hegg"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            ];
          buildable = true;
          };
        };
      };
    }