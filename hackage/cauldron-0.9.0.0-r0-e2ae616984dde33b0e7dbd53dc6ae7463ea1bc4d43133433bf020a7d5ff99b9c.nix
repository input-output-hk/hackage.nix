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
      identifier = { name = "cauldron"; version = "0.9.0.0"; };
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
          (hsPkgs."cauldron".components.sublibs.graph or (errorHandler.buildDepError "cauldron:graph"))
        ];
        buildable = true;
      };
      sublibs = {
        "graph" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
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
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."cauldron" or (errorHandler.buildDepError "cauldron"))
            (hsPkgs."cauldron".components.sublibs.graph or (errorHandler.buildDepError "cauldron:graph"))
          ];
          buildable = true;
        };
        "codec-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."cauldron" or (errorHandler.buildDepError "cauldron"))
            (hsPkgs."cauldron".components.sublibs.graph or (errorHandler.buildDepError "cauldron:graph"))
          ];
          buildable = true;
        };
        "app-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."cauldron" or (errorHandler.buildDepError "cauldron"))
            (hsPkgs."cauldron".components.sublibs.graph or (errorHandler.buildDepError "cauldron:graph"))
          ];
          buildable = true;
        };
        "tests-managed" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."cauldron" or (errorHandler.buildDepError "cauldron"))
            (hsPkgs."cauldron".components.sublibs.graph or (errorHandler.buildDepError "cauldron:graph"))
          ];
          buildable = true;
        };
        "tests-args" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."cauldron" or (errorHandler.buildDepError "cauldron"))
            (hsPkgs."cauldron".components.sublibs.graph or (errorHandler.buildDepError "cauldron:graph"))
          ];
          buildable = true;
        };
      };
    };
  }