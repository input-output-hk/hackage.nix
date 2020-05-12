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
    flags = { testing = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "estimators"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<srush@mit.edu>";
      author = "Sasha Rush";
      homepage = "";
      url = "";
      synopsis = "Tool for managing probability estimation";
      description = "This library provides data structures for collecting counts\nand estimating distributions from observed data. It is designed for natural language\nsystems that need to handle large, discrete observation sets and\nperform smoothing.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."list-tries" or (errorHandler.buildDepError "list-tries"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."prettyclass" or (errorHandler.buildDepError "prettyclass"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = if flags.testing then false else true;
        };
      exes = {
        "hstestprobdist" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."prettyclass" or (errorHandler.buildDepError "prettyclass"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            ];
          buildable = if !flags.testing then false else true;
          };
        };
      };
    }