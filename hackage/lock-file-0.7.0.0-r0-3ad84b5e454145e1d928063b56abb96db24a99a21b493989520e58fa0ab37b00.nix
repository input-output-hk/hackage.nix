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
      identifier = { name = "lock-file"; version = "0.7.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013-2016, 2018 Peter Trško";
      maintainer = "peter.trsko@gmail.com";
      author = "Peter Trsko";
      homepage = "https://github.com/trskop/lock-file#readme";
      url = "";
      synopsis = "Provide exclusive access to a resource using lock file.";
      description = "Provide exclusive access to a resource using lock file, which are files whose\npurpose is to signal by their presence that some resource is locked.\n\nCode example can be found in \"System.IO.LockFile\" module.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8") (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"));
        buildable = true;
        };
      tests = {
        "lock-file-unit-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8") (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"));
          buildable = true;
          };
        };
      };
    }