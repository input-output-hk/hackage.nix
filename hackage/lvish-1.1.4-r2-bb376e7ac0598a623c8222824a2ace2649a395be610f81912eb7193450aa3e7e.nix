let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."lattices" or (buildDepError "lattices"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."atomic-primops" or (buildDepError "atomic-primops"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."bits-atomic" or (buildDepError "bits-atomic"))
          (hsPkgs."missing-foreign" or (buildDepError "missing-foreign"))
          ] ++ (if flags.generic
          then [
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."par-classes" or (buildDepError "par-classes"))
            (hsPkgs."par-collections" or (buildDepError "par-collections"))
            ]
          else [
            (hsPkgs."containers" or (buildDepError "containers"))
            ])) ++ (pkgs.lib).optional (flags.chaselev) (hsPkgs."chaselev-deque" or (buildDepError "chaselev-deque"));
        buildable = true;
        };
      tests = {
        "test-lvish" = {
          depends = ([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."lattices" or (buildDepError "lattices"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."atomic-primops" or (buildDepError "atomic-primops"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."bits-atomic" or (buildDepError "bits-atomic"))
            (hsPkgs."missing-foreign" or (buildDepError "missing-foreign"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-th" or (buildDepError "test-framework-th"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."lvish" or (buildDepError "lvish"))
            ] ++ (pkgs.lib).optionals (flags.generic) [
            (hsPkgs."par-classes" or (buildDepError "par-classes"))
            (hsPkgs."par-collections" or (buildDepError "par-collections"))
            ]) ++ (pkgs.lib).optional (flags.chaselev) (hsPkgs."chaselev-deque" or (buildDepError "chaselev-deque"));
          buildable = if compiler.isGhc && (compiler.version).lt "7.7" && system.isLinux
            then false
            else true;
          };
        };
      };
    }