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
      identifier = { name = "handsy"; version = "0.0.14.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "utdemir@gmail.com";
      author = "Utku Demir";
      homepage = "https://github.com/utdemir/handsy";
      url = "";
      synopsis = "A DSL to describe common shell operations and interpeters for running them locally and remotely.";
      description = "DEPRECATED. @handsy@ is a small library mainly for applications which should make some\noperations on remote machines by SSH. It currently provides you:\n\n* A DSL describing basic system operations('command', 'readFile', 'writeFile' etc.)\n\n* Two interpreters for running this DSL locally or via SSH('run' and 'runRemote')\n\n* Some utility functions for common commands('os', 'mkTemp' etc.)\n\nIf you're looking for a shell scripting alternative, look at @turtle@, @shelly@ or\n@shellmate@ packages. @handsy@ is mostly relevant for the ability to apply simple\ncommands remotely.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."operational" or (errorHandler.buildDepError "operational"))
          (hsPkgs."process-extras" or (errorHandler.buildDepError "process-extras"))
          (hsPkgs."shell-escape" or (errorHandler.buildDepError "shell-escape"))
          (hsPkgs."retry" or (errorHandler.buildDepError "retry"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."handsy" or (errorHandler.buildDepError "handsy"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-th" or (errorHandler.buildDepError "tasty-th"))
          ];
          buildable = true;
        };
      };
    };
  }