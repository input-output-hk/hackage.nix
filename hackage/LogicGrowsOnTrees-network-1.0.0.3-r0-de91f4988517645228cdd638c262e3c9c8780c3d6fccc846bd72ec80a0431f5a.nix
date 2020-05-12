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
    flags = { warnings = false; examples = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "LogicGrowsOnTrees-network"; version = "1.0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Gregory Crosswhite <gcrosswhite@gmail.com>";
      author = "Gregory Crosswhite";
      homepage = "";
      url = "";
      synopsis = "an adapter for LogicGrowsOnTrees that uses multiple processes running in a network";
      description = "This package provides a adapter for the LogicGrowsOnTrees package that uses\nmultiple processes running in a network for parallelism; see the module\ndocumentation for more details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."LogicGrowsOnTrees" or (errorHandler.buildDepError "LogicGrowsOnTrees"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."cmdtheline" or (errorHandler.buildDepError "cmdtheline"))
          (hsPkgs."composition" or (errorHandler.buildDepError "composition"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."hslogger-template" or (errorHandler.buildDepError "hslogger-template"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."MonadCatchIO-transformers" or (errorHandler.buildDepError "MonadCatchIO-transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "count-all-nqueens-solutions" = {
          depends = [
            (hsPkgs."LogicGrowsOnTrees-network" or (errorHandler.buildDepError "LogicGrowsOnTrees-network"))
            (hsPkgs."LogicGrowsOnTrees" or (errorHandler.buildDepError "LogicGrowsOnTrees"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdtheline" or (errorHandler.buildDepError "cmdtheline"))
            ];
          buildable = if flags.examples then true else false;
          };
        "count-all-trivial-tree-leaves" = {
          depends = [
            (hsPkgs."LogicGrowsOnTrees-network" or (errorHandler.buildDepError "LogicGrowsOnTrees-network"))
            (hsPkgs."LogicGrowsOnTrees" or (errorHandler.buildDepError "LogicGrowsOnTrees"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."cmdtheline" or (errorHandler.buildDepError "cmdtheline"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."LogicGrowsOnTrees-network" or (errorHandler.buildDepError "LogicGrowsOnTrees-network"))
            (hsPkgs."LogicGrowsOnTrees" or (errorHandler.buildDepError "LogicGrowsOnTrees"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."hslogger-template" or (errorHandler.buildDepError "hslogger-template"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }