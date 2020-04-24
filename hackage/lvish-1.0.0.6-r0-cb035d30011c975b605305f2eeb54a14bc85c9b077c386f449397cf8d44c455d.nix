{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { debug = false; chaselev = true; getonce = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "lvish"; version = "1.0.0.6"; };
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
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."lattices" or ((hsPkgs.pkgs-errors).buildDepError "lattices"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."atomic-primops" or ((hsPkgs.pkgs-errors).buildDepError "atomic-primops"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          ] ++ (pkgs.lib).optional (flags.chaselev) (hsPkgs."chaselev-deque" or ((hsPkgs.pkgs-errors).buildDepError "chaselev-deque"));
        buildable = true;
        };
      tests = {
        "test-lvish" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."lattices" or ((hsPkgs.pkgs-errors).buildDepError "lattices"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."atomic-primops" or ((hsPkgs.pkgs-errors).buildDepError "atomic-primops"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-th" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-th"))
            ] ++ (pkgs.lib).optional (flags.chaselev) (hsPkgs."chaselev-deque" or ((hsPkgs.pkgs-errors).buildDepError "chaselev-deque"));
          buildable = true;
          };
        };
      };
    }