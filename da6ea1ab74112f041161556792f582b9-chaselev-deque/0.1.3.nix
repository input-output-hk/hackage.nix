{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      debug = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "chaselev-deque";
          version = "0.1.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "rrnewton@gmail.com";
        author = "Ryan R. Newton, Edward Kmett";
        homepage = "https://github.com/rrnewton/haskell-lockfree-queue/wiki";
        url = "";
        synopsis = "Chase & Lev work-stealing lock-free double-ended queues (deques).";
        description = "";
        buildType = "Simple";
      };
      components = {
        chaselev-deque = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.transformers
            hsPkgs.bits-atomic
            hsPkgs.abstract-deque
            hsPkgs.vector
            hsPkgs.ghc-prim
            hsPkgs.atomic-primops
            hsPkgs.ghc-prim
          ];
        };
        tests = {
          test-chaselev-deque = {
            depends  = [
              hsPkgs.base
              hsPkgs.abstract-deque
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.atomic-primops
              hsPkgs.vector
              hsPkgs.ghc-prim
              hsPkgs.containers
            ];
          };
        };
      };
    }