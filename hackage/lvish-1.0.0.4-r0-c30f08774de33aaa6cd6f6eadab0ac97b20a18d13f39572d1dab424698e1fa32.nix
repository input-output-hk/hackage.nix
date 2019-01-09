{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      debug = false;
      chaselev = true;
      quick = false;
      abstract-par = false;
      getonce = false;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "lvish"; version = "1.0.0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "lindsey@composition.al";
      author = "Aaron Turon, Lindsey Kuper, Ryan Newton";
      homepage = "";
      url = "";
      synopsis = "Parallel scheduler, LVar data structures, and infrastructure to build more.";
      description = "\nA programming model based on monotonically-growing concurrent data structures.\n\nAs a starting point, look at \"Control.LVish\", as well as one of these papers:\n\n* FHPC 2013: /LVars: lattice-based data structures for deterministic parallelism/ (<http://dl.acm.org/citation.cfm?id=2502326>).\n\n* POPL 2014: /Freeze after writing: quasi-deterministic programming with LVars/ (<http://www.cs.indiana.edu/~lkuper/papers/2013-lvish-draft.pdf>).\n\nIf the haddocks are not building, here is a mirror:\n<http://www.cs.indiana.edu/~rrnewton/haddock/lvish/>\n\nChange Log:\n\n* 1.0.0.4 - this is a critical bugfix release; please do not use earlier versions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.containers)
          (hsPkgs.lattices)
          (hsPkgs.split)
          (hsPkgs.bytestring)
          (hsPkgs.time)
          (hsPkgs.rdtsc)
          (hsPkgs.vector)
          (hsPkgs.parallel)
          (hsPkgs.async)
          (hsPkgs.atomic-primops)
          (hsPkgs.hashable)
          (hsPkgs.transformers)
          (hsPkgs.random)
          (hsPkgs.chaselev-deque)
          (hsPkgs.bits-atomic)
          (hsPkgs.missing-foreign)
          (hsPkgs.ghc-prim)
          (hsPkgs.HUnit)
          (hsPkgs.test-framework)
          (hsPkgs.test-framework-hunit)
          (hsPkgs.test-framework-th)
          (hsPkgs.bytestring-mmap)
          ] ++ (pkgs.lib).optional (flags.abstract-par) (hsPkgs.abstract-par);
        };
      tests = {
        "test-lvish" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.atomic-primops)
            (hsPkgs.chaselev-deque)
            (hsPkgs.random)
            (hsPkgs.deepseq)
            (hsPkgs.vector)
            (hsPkgs.bits-atomic)
            (hsPkgs.missing-foreign)
            (hsPkgs.time)
            (hsPkgs.ghc-prim)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-th)
            ];
          };
        };
      };
    }