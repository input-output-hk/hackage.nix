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
      identifier = { name = "test-sandbox-hunit"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Benjamin Surma <benjamin.surma@gree.net>";
      author = "Benjamin Surma <benjamin.surma@gree.net>";
      homepage = "";
      url = "";
      synopsis = "HUnit convenience functions for use with test-sandbox";
      description = "This package provides wrappers around the Test.HUnit unit-test functions,\nallowing them to be used easily in the Test.Sandbox monad provided by the test-sandbox package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."test-sandbox" or (errorHandler.buildDepError "test-sandbox"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          ];
        buildable = true;
        };
      };
    }