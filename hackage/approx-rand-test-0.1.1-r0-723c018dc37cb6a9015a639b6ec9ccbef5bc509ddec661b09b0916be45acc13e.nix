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
    flags = { withcairo = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "approx-rand-test"; version = "0.1.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright 2012 Daniël de Kok";
      maintainer = "Daniël de Kok <me@danieldk.eu>";
      author = "Daniël de Kok <me@danieldk.eu>";
      homepage = "http://github.com/danieldk/approx-rand-test";
      url = "";
      synopsis = "Approximate randomization test";
      description = "Utility to perform approximate randomization tests.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."mersenne-random-pure64" or (errorHandler.buildDepError "mersenne-random-pure64"))
          (hsPkgs."monad-mersenne-random" or (errorHandler.buildDepError "monad-mersenne-random"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "approx_rand_test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."approx-rand-test" or (errorHandler.buildDepError "approx-rand-test"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."mersenne-random-pure64" or (errorHandler.buildDepError "mersenne-random-pure64"))
            (hsPkgs."monad-mersenne-random" or (errorHandler.buildDepError "monad-mersenne-random"))
            (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
            ] ++ (pkgs.lib).optionals (flags.withcairo) [
            (hsPkgs."Chart" or (errorHandler.buildDepError "Chart"))
            (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
            (hsPkgs."data-accessor" or (errorHandler.buildDepError "data-accessor"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
            ];
          buildable = true;
          };
        "approx_rand_test_paired" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."approx-rand-test" or (errorHandler.buildDepError "approx-rand-test"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."mersenne-random-pure64" or (errorHandler.buildDepError "mersenne-random-pure64"))
            (hsPkgs."monad-mersenne-random" or (errorHandler.buildDepError "monad-mersenne-random"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
            ] ++ (pkgs.lib).optionals (flags.withcairo) [
            (hsPkgs."Chart" or (errorHandler.buildDepError "Chart"))
            (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
            (hsPkgs."data-accessor" or (errorHandler.buildDepError "data-accessor"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
            ];
          buildable = true;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."approx-rand-test" or (errorHandler.buildDepError "approx-rand-test"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."ieee754" or (errorHandler.buildDepError "ieee754"))
            (hsPkgs."mersenne-random-pure64" or (errorHandler.buildDepError "mersenne-random-pure64"))
            (hsPkgs."monad-mersenne-random" or (errorHandler.buildDepError "monad-mersenne-random"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }