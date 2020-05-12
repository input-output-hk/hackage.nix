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
      identifier = { name = "monad-bayes"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2015-2020 Adam Scibior";
      maintainer = "leonhard.markert@tweag.io";
      author = "Adam Scibior <adscib@gmail.com>";
      homepage = "http://github.com/tweag/monad-bayes#readme";
      url = "";
      synopsis = "A library for probabilistic programming.";
      description = "A library for probabilistic programming using probability monads. The emphasis is on composition of inference algorithms implemented in terms of monad transformers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."ieee754" or (errorHandler.buildDepError "ieee754"))
          (hsPkgs."log-domain" or (errorHandler.buildDepError "log-domain"))
          (hsPkgs."math-functions" or (errorHandler.buildDepError "math-functions"))
          (hsPkgs."monad-coroutine" or (errorHandler.buildDepError "monad-coroutine"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."monad-bayes" or (errorHandler.buildDepError "monad-bayes"))
            (hsPkgs."log-domain" or (errorHandler.buildDepError "log-domain"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      tests = {
        "monad-bayes-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."monad-bayes" or (errorHandler.buildDepError "monad-bayes"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."ieee754" or (errorHandler.buildDepError "ieee754"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."math-functions" or (errorHandler.buildDepError "math-functions"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."log-domain" or (errorHandler.buildDepError "log-domain"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "ssm-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."monad-bayes" or (errorHandler.buildDepError "monad-bayes"))
            ];
          buildable = true;
          };
        "speed-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."monad-bayes" or (errorHandler.buildDepError "monad-bayes"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."abstract-par" or (errorHandler.buildDepError "abstract-par"))
            (hsPkgs."log-domain" or (errorHandler.buildDepError "log-domain"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }