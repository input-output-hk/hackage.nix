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
    flags = {
      debug = false;
      chaselev = false;
      newcontainers = false;
      getonce = false;
      generic = false;
      beta = false;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "lvish"; version = "1.1.1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "lindsey@composition.al";
      author = "Aaron Turon, Lindsey Kuper, Ryan Newton";
      homepage = "";
      url = "";
      synopsis = "Parallel scheduler, LVar data structures, and infrastructure to build more.";
      description = "\nA programming model based on monotonically-growing concurrent data structures.\n\nAs a starting point, look at \"Control.LVish\", as well as one of these papers:\n\n* FHPC 2013: /LVars: lattice-based data structures for deterministic parallelism/ (<http://dl.acm.org/citation.cfm?id=2502326>).\n\n* POPL 2014: /Freeze after writing: quasi-deterministic parallel programming with LVars/ (<http://www.cs.indiana.edu/~lkuper/papers/2013-lvish-draft.pdf>).\n\nIf the haddocks are not building, here is a mirror:\n<http://www.cs.indiana.edu/~rrnewton/haddock/lvish/>\n\nChange Log:\n\n* 1.0.0.6 - tighten up dependencies; remove unused flags; very minor doc fixes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (((([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."lattices" or (errorHandler.buildDepError "lattices"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."atomic-primops" or (errorHandler.buildDepError "atomic-primops"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          ] ++ (pkgs.lib).optionals (flags.beta) [
          (hsPkgs."bits-atomic" or (errorHandler.buildDepError "bits-atomic"))
          (hsPkgs."missing-foreign" or (errorHandler.buildDepError "missing-foreign"))
          ]) ++ [
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ]) ++ (pkgs.lib).optionals (flags.generic) [
          (hsPkgs."par-classes" or (errorHandler.buildDepError "par-classes"))
          (hsPkgs."par-collections" or (errorHandler.buildDepError "par-collections"))
          ]) ++ (pkgs.lib).optionals (flags.debug) [
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."graphviz" or (errorHandler.buildDepError "graphviz"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ]) ++ (pkgs.lib).optional (flags.chaselev) (hsPkgs."chaselev-deque" or (errorHandler.buildDepError "chaselev-deque"));
        buildable = true;
        };
      tests = {
        "test-lvish" = {
          depends = ((([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."lattices" or (errorHandler.buildDepError "lattices"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."atomic-primops" or (errorHandler.buildDepError "atomic-primops"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-th" or (errorHandler.buildDepError "test-framework-th"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."lvish" or (errorHandler.buildDepError "lvish"))
            ] ++ (pkgs.lib).optionals (flags.beta) [
            (hsPkgs."bits-atomic" or (errorHandler.buildDepError "bits-atomic"))
            (hsPkgs."missing-foreign" or (errorHandler.buildDepError "missing-foreign"))
            ]) ++ (pkgs.lib).optionals (flags.generic) [
            (hsPkgs."par-classes" or (errorHandler.buildDepError "par-classes"))
            (hsPkgs."par-collections" or (errorHandler.buildDepError "par-collections"))
            ]) ++ (pkgs.lib).optionals (flags.debug) [
            (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
            (hsPkgs."graphviz" or (errorHandler.buildDepError "graphviz"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ]) ++ (pkgs.lib).optional (flags.chaselev) (hsPkgs."chaselev-deque" or (errorHandler.buildDepError "chaselev-deque"));
          buildable = true;
          };
        };
      };
    }