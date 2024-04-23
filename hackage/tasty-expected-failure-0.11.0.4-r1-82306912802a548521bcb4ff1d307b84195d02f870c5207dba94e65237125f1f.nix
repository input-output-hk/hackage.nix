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
      identifier = { name = "tasty-expected-failure"; version = "0.11.0.4"; };
      license = "MIT";
      copyright = "2015 Joachim Breitner";
      maintainer = "mail@joachim-breitner.de";
      author = "Joachim Breitner";
      homepage = "http://github.com/nomeata/tasty-expected-failure";
      url = "";
      synopsis = "Mark tasty tests as failure expected";
      description = "With the function 'Test.Tasty.ExpectedFailure.expectFail' in the provided module\n\"Test.Tasty.ExpectedFailure\", you can mark that you expect test cases to fail,\nand not to pass.\n\nThis can for example be used for test-driven development: Create the tests,\nmark them with 'Test.Tasty.ExpectedFailure.expectFail', and you can still push\nto the main branch, without your continuous integration branch failing.\n\nOnce someone implements the feature or fixes the bug (maybe unknowingly), the\ntest suite will tell him so, due to the now unexpectedly passing test, and he\ncan remove the 'Test.Tasty.ExpectedFailure.expectFail' marker.\n\nThe module also provides 'Test.Tasty.ExpectedFailure.ignoreTest' to avoid\nrunning a test. Both funtions are implemented via the more general\n'Test.Tasty.ExpectedFailure.wrapTest', which is also provided.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
        ];
        buildable = true;
      };
    };
  }