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
      identifier = { name = "workflow-extra"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 Spiros Boosalis";
      maintainer = "samboosalis@gmail.com";
      author = "Spiros Boosalis";
      homepage = "http://github.com/sboosali/workflow-extra#readme";
      url = "";
      synopsis = "Utilities (e.g. Googling the clipboard contents) for the `workflow` pacakge";
      description = "\nOver functions to defined your own custom workflows, which should be shareable across platforms. (for example, the usage of \"M-c\" (\"meta\") over \"A-c\" (\"alt\") or \"C-c\" (\"control\") is encouraged).\n\ndocumention at \"Workflow.Derived\".\n\nsee the source of \"Workflow.Derived.Main\" for an example.\n\nCombine with one of the platform-specific packages (@workflow-osx@, @workflow-windows@, @workflow-x11@, etc) with \"Workflow.Derived.Repl\" to verify that the bindings behave correctly on your system.\n\ntransitive dependencies:\n\n<<images/workflow-extra.png>>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."workflow-types" or (errorHandler.buildDepError "workflow-types"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."Earley" or (errorHandler.buildDepError "Earley"))
        ];
        buildable = true;
      };
      exes = {
        "example-workflow-extra" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."workflow-extra" or (errorHandler.buildDepError "workflow-extra"))
          ];
          buildable = true;
        };
      };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."workflow-extra" or (errorHandler.buildDepError "workflow-extra"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
          ];
          buildable = true;
        };
        "unittest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."workflow-extra" or (errorHandler.buildDepError "workflow-extra"))
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
            (hsPkgs."workflow-extra" or (errorHandler.buildDepError "workflow-extra"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
          buildable = true;
        };
      };
    };
  }