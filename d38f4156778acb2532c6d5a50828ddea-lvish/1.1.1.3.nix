{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      debug = false;
      chaselev = false;
      newcontainers = false;
      getonce = false;
      generic = false;
      beta = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "lvish";
          version = "1.1.1.3";
        };
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
        lvish = {
          depends  = (((([
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.lattices
            hsPkgs.vector
            hsPkgs.atomic-primops
            hsPkgs.random
            hsPkgs.transformers
            hsPkgs.ghc-prim
            hsPkgs.async
          ] ++ optionals _flags.beta [
            hsPkgs.bits-atomic
            hsPkgs.missing-foreign
          ]) ++ [
            hsPkgs.containers
          ]) ++ optionals _flags.generic [
            hsPkgs.par-classes
            hsPkgs.par-collections
          ]) ++ optionals _flags.debug [
            hsPkgs.fgl
            hsPkgs.graphviz
            hsPkgs.text
          ]) ++ pkgs.lib.optional _flags.chaselev hsPkgs.chaselev-deque;
        };
        tests = {
          test-lvish = {
            depends  = ((([
              hsPkgs.base
              hsPkgs.deepseq
              hsPkgs.containers
              hsPkgs.lattices
              hsPkgs.vector
              hsPkgs.atomic-primops
              hsPkgs.random
              hsPkgs.transformers
              hsPkgs.ghc-prim
              hsPkgs.async
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-th
              hsPkgs.test-framework-quickcheck2
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.time
              hsPkgs.text
              hsPkgs.lvish
            ] ++ optionals _flags.beta [
              hsPkgs.bits-atomic
              hsPkgs.missing-foreign
            ]) ++ optionals _flags.generic [
              hsPkgs.par-classes
              hsPkgs.par-collections
            ]) ++ optionals _flags.debug [
              hsPkgs.fgl
              hsPkgs.graphviz
              hsPkgs.text
            ]) ++ pkgs.lib.optional _flags.chaselev hsPkgs.chaselev-deque;
          };
        };
      };
    }