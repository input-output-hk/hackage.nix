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
    flags = { pedantic = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "lock-file"; version = "0.5.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013-2015, Peter Trško";
      maintainer = "peter.trsko@gmail.com";
      author = "Peter Trsko";
      homepage = "https://github.com/trskop/lock-file";
      url = "";
      synopsis = "Provide exclusive access to a resource using lock file.";
      description = "Provide exclusive access to a resource using lock file, which are files whose\npurpose is to signal by their presence that some resource is locked.\n\nCode example can be found in \"System.IO.LockFile\" module.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."tagged-exception-core" or (errorHandler.buildDepError "tagged-exception-core"))
          ];
        buildable = true;
        };
      tests = {
        "lock-file-unit-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."tagged-exception-core" or (errorHandler.buildDepError "tagged-exception-core"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            ];
          buildable = true;
          };
        };
      };
    }