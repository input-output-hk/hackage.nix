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
    flags = { fast = true; };
    package = {
      specVersion = "1.12";
      identifier = { name = "grisette-monad-coroutine"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2021-2023 Sirui Lu";
      maintainer = "Sirui Lu (siruilu@cs.washington.edu)";
      author = "Sirui Lu";
      homepage = "https://github.com/lsrcz/grisette-monad-coroutine#readme";
      url = "";
      synopsis = "Support for monad-coroutine package with Grisette";
      description = "Orphan instances and wrappers for monad-coroutine package with Grisette.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."grisette" or (errorHandler.buildDepError "grisette"))
          (hsPkgs."monad-coroutine" or (errorHandler.buildDepError "monad-coroutine"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."grisette" or (errorHandler.buildDepError "grisette"))
            (hsPkgs."grisette-monad-coroutine" or (errorHandler.buildDepError "grisette-monad-coroutine"))
            (hsPkgs."monad-coroutine" or (errorHandler.buildDepError "monad-coroutine"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-test-reporter" or (errorHandler.buildDepError "tasty-test-reporter"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }