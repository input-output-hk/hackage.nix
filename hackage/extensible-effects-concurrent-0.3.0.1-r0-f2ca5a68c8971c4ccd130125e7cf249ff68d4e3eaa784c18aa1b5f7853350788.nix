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
      specVersion = "1.10";
      identifier = {
        name = "extensible-effects-concurrent";
        version = "0.3.0.1";
        };
      license = "BSD-3-Clause";
      copyright = "Copyright Sven Heyll";
      maintainer = "sven.heyll@gmail.com";
      author = "Sven Heyll";
      homepage = "https://github.com/sheyll/extensible-effects-concurrent#readme";
      url = "";
      synopsis = "Message passing concurrency as extensible-effect";
      description = "Please see the README on GitHub at <https://github.com/sheyll/extensible-effects-concurrent#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."logging-effect" or (errorHandler.buildDepError "logging-effect"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."extensible-effects" or (errorHandler.buildDepError "extensible-effects"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          ];
        buildable = true;
        };
      tests = {
        "extensible-effects-concurrent-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."extensible-effects-concurrent" or (errorHandler.buildDepError "extensible-effects-concurrent"))
            (hsPkgs."extensible-effects" or (errorHandler.buildDepError "extensible-effects"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-discover" or (errorHandler.buildDepError "tasty-discover"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            ];
          buildable = true;
          };
        };
      };
    }