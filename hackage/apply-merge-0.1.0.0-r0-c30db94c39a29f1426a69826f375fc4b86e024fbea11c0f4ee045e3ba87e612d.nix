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
      specVersion = "3.6";
      identifier = { name = "apply-merge"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Preetham Gujjula";
      maintainer = "Preetham Gujjula <libraries@mail.preetham.io>";
      author = "Preetham Gujjula";
      homepage = "https://github.com/pgujjula/apply-merge#readme";
      url = "";
      synopsis = "Lift a binary, non-decreasing function onto ordered lists and order the output";
      description = "Please see the README on GitHub at <https://github.com/pgujjula/apply-merge#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."pqueue" or (errorHandler.buildDepError "pqueue"))
          ];
        buildable = true;
        };
      tests = {
        "apply-merge-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."falsify" or (errorHandler.buildDepError "falsify"))
            (hsPkgs."pqueue" or (errorHandler.buildDepError "pqueue"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-expected-failure" or (errorHandler.buildDepError "tasty-expected-failure"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "apply-merge-benchmarks" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."pqueue" or (errorHandler.buildDepError "pqueue"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }