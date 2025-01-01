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
      specVersion = "3.4";
      identifier = { name = "cauldron"; version = "0.6.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Daniel Díaz";
      author = "diaz_carrete@yahoo.com";
      homepage = "";
      url = "";
      synopsis = "Dependency injection library";
      description = "Dependency injection library that wires things at runtime.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."algebraic-graphs" or (errorHandler.buildDepError "algebraic-graphs"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
      exes = {
        "cauldron-example-wiring" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cauldron" or (errorHandler.buildDepError "cauldron"))
          ];
          buildable = true;
        };
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."algebraic-graphs" or (errorHandler.buildDepError "algebraic-graphs"))
            (hsPkgs."cauldron" or (errorHandler.buildDepError "cauldron"))
          ];
          buildable = true;
        };
        "codec-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."algebraic-graphs" or (errorHandler.buildDepError "algebraic-graphs"))
            (hsPkgs."cauldron" or (errorHandler.buildDepError "cauldron"))
          ];
          buildable = true;
        };
        "app-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."algebraic-graphs" or (errorHandler.buildDepError "algebraic-graphs"))
            (hsPkgs."cauldron" or (errorHandler.buildDepError "cauldron"))
          ];
          buildable = true;
        };
        "tests-managed" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."algebraic-graphs" or (errorHandler.buildDepError "algebraic-graphs"))
            (hsPkgs."cauldron" or (errorHandler.buildDepError "cauldron"))
          ];
          buildable = true;
        };
        "tests-args" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."algebraic-graphs" or (errorHandler.buildDepError "algebraic-graphs"))
            (hsPkgs."cauldron" or (errorHandler.buildDepError "cauldron"))
          ];
          buildable = true;
        };
      };
    };
  }