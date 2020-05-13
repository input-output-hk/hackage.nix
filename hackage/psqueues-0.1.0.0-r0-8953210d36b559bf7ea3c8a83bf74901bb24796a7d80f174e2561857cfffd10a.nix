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
      specVersion = "1.8";
      identifier = { name = "psqueues"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@better.com";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Pure priority search queues";
      description = "A priority search queue manages a set of triples of the form\n@(key, priority, value)@ and allows for efficient lookup by key, and\nefficient lookup and removal of the element with minimal priority. This\npackage contains three, performant implementations of priority search\nqueues, which differ in the requirements on the type of keys.\n\n* 'IntPSQ's are the most efficient structure, but require the keys to be\nof type 'Int'.\n\n* 'OrdPSQ's just require the key to implement the `Ord` typeclass, but are\nthe slowest structures of the three.\n\n* 'HashPSQ's require the key to implement both the 'Ord' and 'Hashable'\ntypeclasses. They use an 'IntMap' over the hash of the keys combined\nwith a 'OrdPSQ' to manage collisions. Except for keys with a very fast\ncomparison and small smaps 'HashPSQ's are faster than 'OrdPSQ's.\n\nTypical use cases for priority search queues are LRU caches, where the\npriority is the time of the last access, and timeout management, where the\npriority is the time at which the timeout should trigger.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "6.10") (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"));
        buildable = true;
        };
      tests = {
        "psqueues-tests" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."psqueues" or (errorHandler.buildDepError "psqueues"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "psqueues-benchmarks" = {
          depends = [
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."fingertree-psqueue" or (errorHandler.buildDepError "fingertree-psqueue"))
            (hsPkgs."PSQueue" or (errorHandler.buildDepError "PSQueue"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."psqueues" or (errorHandler.buildDepError "psqueues"))
            ];
          buildable = true;
          };
        };
      };
    }