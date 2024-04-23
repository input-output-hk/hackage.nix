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
      identifier = { name = "workflow-types"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 Spiros Boosalis";
      maintainer = "samboosalis@gmail.com";
      author = "Spiros Boosalis";
      homepage = "http://github.com/sboosali/workflow-types#readme";
      url = "";
      synopsis = "Automate keyboard\\/mouse\\/clipboard\\/application interaction.";
      description = "\na platform-independent interface for scripting your manual computer workflows.\n\ndocumention at \"Workflow.Core\".\n\nsee the source of \"Workflow.Example\" for an example.\n\ntransitive dependencies:\n\n<<workflow-types.png>>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."spiros" or (errorHandler.buildDepError "spiros"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
        ];
        buildable = true;
      };
      exes = {
        "example-workflow-types" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."workflow-types" or (errorHandler.buildDepError "workflow-types"))
          ];
          buildable = true;
        };
      };
    };
  }