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
      specVersion = "1.14";
      identifier = { name = "test-framework-sandbox"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Benjamin Surma <benjamin.surma@gmail.com>";
      author = "Benjamin Surma <benjamin.surma@gmail.com>";
      homepage = "http://gree.github.io/haskell-test-sandbox/";
      url = "";
      synopsis = "test-sandbox support for the test-framework package";
      description = "Interfaces the test-sandbox with the test-framework packages to allow writing system tests\nin Haskell in a standard fashion.\n\nThe environment is preserved between test cases. This enables the user, for instance, to start\na process in one test and stop it in another.\n\nUsage examples can be found on the github page:\n<http://gree.github.io/haskell-test-sandbox/>\n\nA full example project is available at:\n<https://git.github.com/benjamin-surma/flare-tests/>\n\nExtensive documentation is available in the source code itself.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
          (hsPkgs."test-sandbox" or (errorHandler.buildDepError "test-sandbox"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-sandbox" or (errorHandler.buildDepError "test-framework-sandbox"))
            (hsPkgs."test-sandbox" or (errorHandler.buildDepError "test-sandbox"))
            (hsPkgs."test-sandbox-hunit" or (errorHandler.buildDepError "test-sandbox-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }