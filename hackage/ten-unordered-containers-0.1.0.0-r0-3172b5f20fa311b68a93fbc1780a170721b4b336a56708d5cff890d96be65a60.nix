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
      identifier = { name = "ten-unordered-containers"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "2020-2021 Google LLC";
      maintainer = "Andrew Pritchard <awpr@google.com>";
      author = "Andrew Pritchard <awpr@google.com>";
      homepage = "https://github.com/google/hs-ten#readme";
      url = "";
      synopsis = "A package providing one unordered container.";
      description = "This provides unordered (hash-based) containers of kind `(k -> Type) -> Type`\nbased on unordered-containers.  Currently only HashMap10 is implemented.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."portray" or (errorHandler.buildDepError "portray"))
          (hsPkgs."portray-diff" or (errorHandler.buildDepError "portray-diff"))
          (hsPkgs."some" or (errorHandler.buildDepError "some"))
          (hsPkgs."ten" or (errorHandler.buildDepError "ten"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."wrapped" or (errorHandler.buildDepError "wrapped"))
        ];
        buildable = true;
      };
      tests = {
        "HashMap-test" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."portray" or (errorHandler.buildDepError "portray"))
            (hsPkgs."portray-diff" or (errorHandler.buildDepError "portray-diff"))
            (hsPkgs."portray-diff-hunit" or (errorHandler.buildDepError "portray-diff-hunit"))
            (hsPkgs."portray-pretty" or (errorHandler.buildDepError "portray-pretty"))
            (hsPkgs."some" or (errorHandler.buildDepError "some"))
            (hsPkgs."ten" or (errorHandler.buildDepError "ten"))
            (hsPkgs."ten-lens" or (errorHandler.buildDepError "ten-lens"))
            (hsPkgs."ten-unordered-containers" or (errorHandler.buildDepError "ten-unordered-containers"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."wrapped" or (errorHandler.buildDepError "wrapped"))
          ];
          buildable = true;
        };
      };
    };
  }