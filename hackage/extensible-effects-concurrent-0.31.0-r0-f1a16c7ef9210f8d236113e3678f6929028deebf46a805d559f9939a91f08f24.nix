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
      specVersion = "2.0";
      identifier = {
        name = "extensible-effects-concurrent";
        version = "0.31.0";
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
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."hostname" or (errorHandler.buildDepError "hostname"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."extensible-effects" or (errorHandler.buildDepError "extensible-effects"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."pretty-types" or (errorHandler.buildDepError "pretty-types"))
        ];
        buildable = true;
      };
      exes = {
        "extensible-effects-concurrent-example-1" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."extensible-effects-concurrent" or (errorHandler.buildDepError "extensible-effects-concurrent"))
            (hsPkgs."extensible-effects" or (errorHandler.buildDepError "extensible-effects"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."pretty-types" or (errorHandler.buildDepError "pretty-types"))
          ];
          buildable = true;
        };
        "extensible-effects-concurrent-example-2" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."extensible-effects-concurrent" or (errorHandler.buildDepError "extensible-effects-concurrent"))
            (hsPkgs."extensible-effects" or (errorHandler.buildDepError "extensible-effects"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."pretty-types" or (errorHandler.buildDepError "pretty-types"))
          ];
          buildable = true;
        };
        "extensible-effects-concurrent-example-3" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."extensible-effects-concurrent" or (errorHandler.buildDepError "extensible-effects-concurrent"))
            (hsPkgs."extensible-effects" or (errorHandler.buildDepError "extensible-effects"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          ];
          buildable = true;
        };
        "extensible-effects-concurrent-example-4" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."extensible-effects-concurrent" or (errorHandler.buildDepError "extensible-effects-concurrent"))
            (hsPkgs."extensible-effects" or (errorHandler.buildDepError "extensible-effects"))
          ];
          buildable = true;
        };
        "extensible-effects-concurrent-example-embedded-protocols" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."extensible-effects-concurrent" or (errorHandler.buildDepError "extensible-effects-concurrent"))
            (hsPkgs."extensible-effects" or (errorHandler.buildDepError "extensible-effects"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
      tests = {
        "extensible-effects-concurrent-test" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."extensible-effects-concurrent" or (errorHandler.buildDepError "extensible-effects-concurrent"))
            (hsPkgs."extensible-effects" or (errorHandler.buildDepError "extensible-effects"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hostname" or (errorHandler.buildDepError "hostname"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
            (hsPkgs."pretty-types" or (errorHandler.buildDepError "pretty-types"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-discover" or (errorHandler.buildDepError "tasty-discover"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
      };
    };
  }