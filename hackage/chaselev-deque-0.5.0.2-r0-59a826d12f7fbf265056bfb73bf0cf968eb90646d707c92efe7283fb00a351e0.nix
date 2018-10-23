{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { debug = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "chaselev-deque";
        version = "0.5.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "rrnewton@gmail.com";
      author = "Ryan R. Newton, Edward Kmett";
      homepage = "https://github.com/rrnewton/haskell-lockfree/wiki";
      url = "";
      synopsis = "Chase & Lev work-stealing lock-free double-ended queues (deques).";
      description = "A queue that is push/pop on one end and pop-only on the other.  These are commonly\nused for work-stealing.\nThis implementation derives directly from the pseudocode in the 2005 SPAA paper:\n\n\"http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.170.1097&rep=rep1&type=pdf\"";
      buildType = "Simple";
    };
    components = {
      "chaselev-deque" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.transformers)
          (hsPkgs.bits-atomic)
          (hsPkgs.abstract-deque)
          (hsPkgs.vector)
          (hsPkgs.ghc-prim)
          (hsPkgs.atomic-primops)
          (hsPkgs.ghc-prim)
        ];
      };
      tests = {
        "test-chaselev-deque" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.abstract-deque)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.atomic-primops)
            (hsPkgs.vector)
            (hsPkgs.ghc-prim)
            (hsPkgs.array)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }