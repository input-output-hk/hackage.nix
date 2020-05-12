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
    flags = { warnings = false; pattern-warnings = false; examples = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "LogicGrowsOnTrees-processes"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Gregory Crosswhite <gcrosswhite@gmail.com>";
      author = "Gregory Crosswhite";
      homepage = "";
      url = "";
      synopsis = "an adapter for the LogicGrowsOnTrees package that uses multiple processes for parallelism";
      description = "This package provides a adapter for the LogicGrowsOnTrees package that uses\nmultiple processes for parallelism; see the module documentation for more\ndetails.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."LogicGrowsOnTrees" or (errorHandler.buildDepError "LogicGrowsOnTrees"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."cmdtheline" or (errorHandler.buildDepError "cmdtheline"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."FindBin" or (errorHandler.buildDepError "FindBin"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."hslogger-template" or (errorHandler.buildDepError "hslogger-template"))
          (hsPkgs."MonadCatchIO-transformers" or (errorHandler.buildDepError "MonadCatchIO-transformers"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "count-all-nqueens-solutions" = {
          depends = [
            (hsPkgs."LogicGrowsOnTrees-processes" or (errorHandler.buildDepError "LogicGrowsOnTrees-processes"))
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
            (hsPkgs."LogicGrowsOnTrees-processes" or (errorHandler.buildDepError "LogicGrowsOnTrees-processes"))
            (hsPkgs."LogicGrowsOnTrees" or (errorHandler.buildDepError "LogicGrowsOnTrees"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."hslogger-template" or (errorHandler.buildDepError "hslogger-template"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }