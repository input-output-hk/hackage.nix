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
      specVersion = "1.10";
      identifier = { name = "linear-circuit"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@henning-thielemann.de";
      author = "Henning Thielemann";
      homepage = "https://hub.darcs.net/thielema/linear-circuit";
      url = "";
      synopsis = "Compute resistance of linear electrical circuits";
      description = "Compute resistance of linear electrical circuits.\n\nFor examples see test directory.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."lapack" or (errorHandler.buildDepError "lapack"))
          (hsPkgs."netlib-ffi" or (errorHandler.buildDepError "netlib-ffi"))
          (hsPkgs."comfort-array" or (errorHandler.buildDepError "comfort-array"))
          (hsPkgs."comfort-graph" or (errorHandler.buildDepError "comfort-graph"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "test-linear-circuit" = {
          depends = [
            (hsPkgs."linear-circuit" or (errorHandler.buildDepError "linear-circuit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."comfort-graph" or (errorHandler.buildDepError "comfort-graph"))
            (hsPkgs."non-empty" or (errorHandler.buildDepError "non-empty"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }