{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      debug = false;
      chaselev = false;
      getonce = false;
      generic = true;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "lvish"; version = "1.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "lindsey@composition.al";
      author = "Aaron Turon, Lindsey Kuper, Ryan Newton";
      homepage = "";
      url = "";
      synopsis = "Parallel scheduler, LVar data structures, and infrastructure to build more.";
      description = "\nA programming model based on monotonically-growing concurrent data structures.\n\nAs a starting point, look at \"Control.LVish\", as well as one of these papers:\n\n* FHPC 2013: /LVars: lattice-based data structures for deterministic parallelism/ (<http://dl.acm.org/citation.cfm?id=2502326>).\n\n* POPL 2014: /Freeze after writing: quasi-deterministic parallel programming with LVars/ (<http://www.cs.indiana.edu/~lkuper/papers/2013-lvish-draft.pdf>).\n\nIf the haddocks are not building, here is a mirror:\n<http://www.cs.indiana.edu/~rrnewton/haddock/lvish/>\n\nChange Log:\n\n* 1.0.0.6 - tighten up dependencies; remove unused flags; very minor doc fixes.\n\n* 1.1.2  - many bugfixes, plus a new logging infrastructure, and verification of finite lattices";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."lattices" or ((hsPkgs.pkgs-errors).buildDepError "lattices"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."atomic-primops" or ((hsPkgs.pkgs-errors).buildDepError "atomic-primops"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."bits-atomic" or ((hsPkgs.pkgs-errors).buildDepError "bits-atomic"))
          (hsPkgs."missing-foreign" or ((hsPkgs.pkgs-errors).buildDepError "missing-foreign"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ] ++ (pkgs.lib).optionals (flags.generic) [
          (hsPkgs."par-classes" or ((hsPkgs.pkgs-errors).buildDepError "par-classes"))
          (hsPkgs."par-collections" or ((hsPkgs.pkgs-errors).buildDepError "par-collections"))
          ]) ++ (pkgs.lib).optionals (flags.debug) [
          (hsPkgs."fgl" or ((hsPkgs.pkgs-errors).buildDepError "fgl"))
          (hsPkgs."graphviz" or ((hsPkgs.pkgs-errors).buildDepError "graphviz"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ]) ++ (pkgs.lib).optional (flags.chaselev) (hsPkgs."chaselev-deque" or ((hsPkgs.pkgs-errors).buildDepError "chaselev-deque"));
        buildable = true;
        };
      tests = {
        "test-lvish" = {
          depends = (([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."lattices" or ((hsPkgs.pkgs-errors).buildDepError "lattices"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."atomic-primops" or ((hsPkgs.pkgs-errors).buildDepError "atomic-primops"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."bits-atomic" or ((hsPkgs.pkgs-errors).buildDepError "bits-atomic"))
            (hsPkgs."missing-foreign" or ((hsPkgs.pkgs-errors).buildDepError "missing-foreign"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-th" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-th"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."lvish" or ((hsPkgs.pkgs-errors).buildDepError "lvish"))
            ] ++ (pkgs.lib).optionals (flags.generic) [
            (hsPkgs."par-classes" or ((hsPkgs.pkgs-errors).buildDepError "par-classes"))
            (hsPkgs."par-collections" or ((hsPkgs.pkgs-errors).buildDepError "par-collections"))
            ]) ++ (pkgs.lib).optionals (flags.debug) [
            (hsPkgs."fgl" or ((hsPkgs.pkgs-errors).buildDepError "fgl"))
            (hsPkgs."graphviz" or ((hsPkgs.pkgs-errors).buildDepError "graphviz"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ]) ++ (pkgs.lib).optional (flags.chaselev) (hsPkgs."chaselev-deque" or ((hsPkgs.pkgs-errors).buildDepError "chaselev-deque"));
          buildable = true;
          };
        };
      };
    }