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
      getonce = false;
      generic = false;
    };
    package = {
      specVersion = "1.8";
      identifier = { name = "lvish"; version = "1.1.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "lindsey@composition.al";
      author = "Aaron Turon, Lindsey Kuper, Ryan Newton";
      homepage = "";
      url = "";
      synopsis = "Parallel scheduler, LVar data structures, and infrastructure to build more.";
      description = "\nA programming model based on monotonically-growing concurrent data structures.\n\nAs a starting point, look at the main module, \"Control.LVish\", as well as one of these papers:\n\n* FHPC 2013: /LVars: lattice-based data structures for deterministic parallelism/ (<http://dl.acm.org/citation.cfm?id=2502326>).\n\n* POPL 2014: /Freeze after writing: quasi-deterministic parallel programming with LVars/ (<http://www.cs.indiana.edu/~lkuper/papers/2013-lvish-draft.pdf>).\n\n* PLDI 2014: /Taming the Parallel Effect Zoo: Extensible Deterministic Parallelism with LVish/ (<http://www.cs.indiana.edu/~rrnewton/papers/effectzoo-draft.pdf>).\n\nIf the haddocks are not building, here is a mirror:\n<http://www.cs.indiana.edu/~rrnewton/haddock/lvish/>\n\nChange Log:\n\n* 1.0.0.6 - tighten up dependencies; remove unused flags; very minor doc fixes.\n\n* 1.1.2  - many bugfixes, plus a new logging infrastructure, and verification of finite lattices\n\n* 1.1.4 - GHC 7.8.3 compatibility.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."lattices" or (errorHandler.buildDepError "lattices"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."atomic-primops" or (errorHandler.buildDepError "atomic-primops"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."bits-atomic" or (errorHandler.buildDepError "bits-atomic"))
          (hsPkgs."missing-foreign" or (errorHandler.buildDepError "missing-foreign"))
        ] ++ (if flags.generic
          then [
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."par-classes" or (errorHandler.buildDepError "par-classes"))
            (hsPkgs."par-collections" or (errorHandler.buildDepError "par-collections"))
          ]
          else [
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ])) ++ pkgs.lib.optional (flags.chaselev) (hsPkgs."chaselev-deque" or (errorHandler.buildDepError "chaselev-deque"));
        buildable = true;
      };
      tests = {
        "test-lvish" = {
          depends = ([
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
            (hsPkgs."bits-atomic" or (errorHandler.buildDepError "bits-atomic"))
            (hsPkgs."missing-foreign" or (errorHandler.buildDepError "missing-foreign"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-th" or (errorHandler.buildDepError "test-framework-th"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."lvish" or (errorHandler.buildDepError "lvish"))
          ] ++ pkgs.lib.optionals (flags.generic) [
            (hsPkgs."par-classes" or (errorHandler.buildDepError "par-classes"))
            (hsPkgs."par-collections" or (errorHandler.buildDepError "par-collections"))
          ]) ++ pkgs.lib.optional (flags.chaselev) (hsPkgs."chaselev-deque" or (errorHandler.buildDepError "chaselev-deque"));
          buildable = if compiler.isGhc && compiler.version.lt "7.7" && system.isLinux
            then false
            else true;
        };
      };
    };
  }