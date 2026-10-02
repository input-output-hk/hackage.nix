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
    flags = { werror = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "tasty-bdd"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2017 Paolo Veronelli";
      maintainer = "paolo.veronelli@gmail.com";
      author = "Paolo Veronelli, Pavlo Kerestey";
      homepage = "https://github.com/lambdasistemi/tasty-bdd";
      url = "";
      synopsis = "BDD tests language and tasty provider";
      description = "A typed Given/When/Then language and a free-monad interface for Tasty,\nwith ordered setup, reverse-order teardown, recursive test decorators\nand structural equality diagnostics.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          (hsPkgs."tasty-fail-fast" or (errorHandler.buildDepError "tasty-fail-fast"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."tree-diff" or (errorHandler.buildDepError "tree-diff"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-bdd" or (errorHandler.buildDepError "tasty-bdd"))
            (hsPkgs."tasty-expected-failure" or (errorHandler.buildDepError "tasty-expected-failure"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
        "example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-bdd" or (errorHandler.buildDepError "tasty-bdd"))
          ];
          buildable = true;
        };
      };
    };
  }