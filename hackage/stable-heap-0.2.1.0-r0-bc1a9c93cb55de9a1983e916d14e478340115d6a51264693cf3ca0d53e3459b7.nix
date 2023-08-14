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
      identifier = { name = "stable-heap"; version = "0.2.1.0"; };
      license = "MIT";
      copyright = "Copyright (C) 2015-2016 Jake McArthur";
      maintainer = "Jake.McArthur@gmail.com";
      author = "Jake McArthur";
      homepage = "http://hub.darcs.net/jmcarthur/stable-heap";
      url = "";
      synopsis = "Purely functional stable heaps (fair priority queues)";
      description = "This library provides a purely functional implementation of\nstable heaps (fair priority queues). The data structure is a\ncousin of the pairing heap which maintains a sequential\nordering of the keys. Insertion can be to either end of the\nheap, as though it is a deque, and it can be split on the\nleft-most occurrence of the minimum key.\n\nThe current state of the package is fairly barebones. It will\nbe fleshed out later.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."stable-heap" or (errorHandler.buildDepError "stable-heap"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."fingertree" or (errorHandler.buildDepError "fingertree"))
            (hsPkgs."heaps" or (errorHandler.buildDepError "heaps"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."pqueue" or (errorHandler.buildDepError "pqueue"))
            (hsPkgs."stable-heap" or (errorHandler.buildDepError "stable-heap"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }