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
      identifier = { name = "random-hypergeometric"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2015 Sam Rijs\n2005 Robert Kern\n1998 Ivan Frohne";
      maintainer = "srijs@airpost.net";
      author = "Sam Rijs";
      homepage = "https://github.com/srijs/random-hypergeometric";
      url = "";
      synopsis = "Random variate generation from hypergeometric distributions";
      description = "The Hypergeometric distribution.  This is the discrete probability\ndistribution that measures the probability of /k/ successes in /l/\ntrials, without replacement, from a finite population.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."random-fu" or (errorHandler.buildDepError "random-fu"))
          (hsPkgs."math-functions" or (errorHandler.buildDepError "math-functions"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."random-fu" or (errorHandler.buildDepError "random-fu"))
            (hsPkgs."math-functions" or (errorHandler.buildDepError "math-functions"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."cabal-test-quickcheck" or (errorHandler.buildDepError "cabal-test-quickcheck"))
            ];
          buildable = true;
          };
        };
      };
    }