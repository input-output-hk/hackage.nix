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
      specVersion = "1.12";
      identifier = { name = "mockcat"; version = "0.5.5.0"; };
      license = "MIT";
      copyright = "2024 funnycat";
      maintainer = "funnycat <pujoheadsoft@gmail.com>";
      author = "funnycat <pujoheadsoft@gmail.com>";
      homepage = "https://github.com/pujoheadsoft/mockcat#readme";
      url = "";
      synopsis = "Mock library for test in Haskell.";
      description = "mockcat is a small mocking / stubbing DSL for Haskell tests.\n\nFeatures:\n\n* Describe expectations with left-to-right pipelines: `arg |> ... |> result`\n* Generate typeclass mocks via Template Haskell (`makeMock`, `makePartialMock`)\n* Create standalone function stubs (`createStubFn`, constant mocks)\n* Flexible return behaviour: vary by argument or occurrence (including identical args later)\n* Optional per-call variation for `IO a` results\n* Concurrency-safe counting and explicit lazy semantics (unevaluated results are not recorded)\n* Simple verification helpers (apply count predicates, ordering checks)\n* Partial adoption: mock only selected methods; no hidden global state\n\nSee README for full examples: <https://github.com/pujoheadsoft/mockcat#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
        ];
        buildable = true;
      };
      tests = {
        "mockcat-test" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."mockcat" or (errorHandler.buildDepError "mockcat"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
          ];
          buildable = true;
        };
      };
    };
  }