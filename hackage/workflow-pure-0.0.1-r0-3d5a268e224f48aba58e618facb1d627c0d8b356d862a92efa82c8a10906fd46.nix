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
      identifier = { name = "workflow-pure"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 Spiros Boosalis";
      maintainer = "samboosalis@gmail.com";
      author = "Spiros Boosalis";
      homepage = "http://github.com/sboosali/workflow-pure#readme";
      url = "";
      synopsis = "manipulate `workflow-types:Workflow`'s";
      description = "\nperform some static analysis on a workflow, without executing it (which would be platform-dependent).\n\ndocumention at \"Workflow.Pure\".\n\nsee the source of \"Workflow.Pure.Main\" for an example.\n\ntransitive dependencies:\n\n<<images/workflow-pure.png>>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."workflow-types" or (errorHandler.buildDepError "workflow-types"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          ];
        buildable = true;
        };
      exes = {
        "example-workflow-pure" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."workflow-pure" or (errorHandler.buildDepError "workflow-pure"))
            ];
          buildable = true;
          };
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."workflow-pure" or (errorHandler.buildDepError "workflow-pure"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            ];
          buildable = true;
          };
        "unittest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."workflow-pure" or (errorHandler.buildDepError "workflow-pure"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "command" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."workflow-pure" or (errorHandler.buildDepError "workflow-pure"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            ];
          buildable = true;
          };
        };
      };
    }