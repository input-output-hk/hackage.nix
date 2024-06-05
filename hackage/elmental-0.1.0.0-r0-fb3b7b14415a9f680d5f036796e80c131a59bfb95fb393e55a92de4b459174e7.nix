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
      specVersion = "3.0";
      identifier = { name = "elmental"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Gaël Deest";
      author = "Gaël Deest";
      homepage = "https://github.com/withflint/monorepo";
      url = "";
      synopsis = "Generate Elm datatype definitions, encoders and decoders from Haskell datatypes.";
      description = "Elmental is a code generator that takes in Haskell type definitions and generates Elm datatypes, along with Aeson-compatible encoders and decoders.\nIt emphasizes flexibility, support for a large number of Haskell types, and integration into existing Elm codebases.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."kind-generics" or (errorHandler.buildDepError "kind-generics"))
          (hsPkgs."neat-interpolation" or (errorHandler.buildDepError "neat-interpolation"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      exes = {
        "generate-test-app-code" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."elmental" or (errorHandler.buildDepError "elmental"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."kind-generics-th" or (errorHandler.buildDepError "kind-generics-th"))
          ];
          buildable = true;
        };
      };
      tests = {
        "elmental-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."elmental" or (errorHandler.buildDepError "elmental"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."kind-generics-th" or (errorHandler.buildDepError "kind-generics-th"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-golden" or (errorHandler.buildDepError "hspec-golden"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
          ];
          buildable = true;
        };
      };
    };
  }