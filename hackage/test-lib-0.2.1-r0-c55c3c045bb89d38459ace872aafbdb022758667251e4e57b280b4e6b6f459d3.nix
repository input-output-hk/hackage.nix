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
      identifier = { name = "test-lib"; version = "0.2.1"; };
      license = "ISC";
      copyright = "";
      maintainer = "iavor.diatchki@gmail.com";
      author = "Iavor Diatchki";
      homepage = "";
      url = "";
      synopsis = "A library to make a quick test-runner script.";
      description = "This library makes it easy to define an executable,\nwhich can find and run a bunch of tests for a binary.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."simple-get-opt" or (errorHandler.buildDepError "simple-get-opt"))
          (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
          (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
          ];
        buildable = true;
        };
      exes = {
        "test-runner" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."simple-get-opt" or (errorHandler.buildDepError "simple-get-opt"))
            (hsPkgs."test-lib" or (errorHandler.buildDepError "test-lib"))
            ];
          buildable = true;
          };
        };
      };
    }