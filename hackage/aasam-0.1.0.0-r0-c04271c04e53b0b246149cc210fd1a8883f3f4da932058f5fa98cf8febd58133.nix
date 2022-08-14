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
      specVersion = "2.4";
      identifier = { name = "aasam"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "mobotsar@protonmail.com";
      author = "Alexander Lucas";
      homepage = "";
      url = "";
      synopsis = "Convert distfix precedence grammars to unambiguous context-free grammars.";
      description = "This project is a fully-extended implementation of the algorithm ℳ from Annika Aasa's \"Precedences in specifications and implementations of programming languages\". It provides an interface for converting distfix (mixfix) precedence grammars into unambiguous context-free grammars.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "aasam-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."aasam" or (errorHandler.buildDepError "aasam"))
            ];
          buildable = true;
          };
        };
      };
    }