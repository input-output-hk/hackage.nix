{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "dph-examples";
          version = "0.6.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ben Lippmeier <benl@ouroborus.net>";
        author = "The DPH Team";
        homepage = "http://www.haskell.org/haskellwiki/GHC/Data_Parallel_Haskell";
        url = "";
        synopsis = "Data Parallel Haskell example programs.";
        description = "Data Parallel Haskell example programs.";
        buildType = "Simple";
      };
      components = {
        exes = {
          dph-smoke-bool = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.random
              hsPkgs.old-time
              hsPkgs.containers
              hsPkgs.HUnit
              hsPkgs.dph-base
              hsPkgs.dph-prim-par
              hsPkgs.dph-lifted-vseg
            ];
          };
          dph-smoke-concat = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.random
              hsPkgs.old-time
              hsPkgs.containers
              hsPkgs.HUnit
              hsPkgs.dph-base
              hsPkgs.dph-prim-par
              hsPkgs.dph-lifted-vseg
            ];
          };
          dph-smoke-sumsq = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.random
              hsPkgs.old-time
              hsPkgs.containers
              hsPkgs.HUnit
              hsPkgs.dph-base
              hsPkgs.dph-prim-par
              hsPkgs.dph-lifted-vseg
            ];
          };
          dph-smoke-evens = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.random
              hsPkgs.old-time
              hsPkgs.containers
              hsPkgs.HUnit
              hsPkgs.dph-base
              hsPkgs.dph-prim-par
              hsPkgs.dph-lifted-vseg
            ];
          };
          dph-smoke-indices = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.random
              hsPkgs.old-time
              hsPkgs.containers
              hsPkgs.HUnit
              hsPkgs.dph-base
              hsPkgs.dph-prim-par
              hsPkgs.dph-lifted-vseg
            ];
          };
          dph-smoke-rank = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.random
              hsPkgs.old-time
              hsPkgs.containers
              hsPkgs.HUnit
              hsPkgs.dph-base
              hsPkgs.dph-prim-par
              hsPkgs.dph-lifted-vseg
            ];
          };
          dph-smoke-reverse = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.random
              hsPkgs.old-time
              hsPkgs.containers
              hsPkgs.HUnit
              hsPkgs.dph-base
              hsPkgs.dph-prim-par
              hsPkgs.dph-lifted-vseg
            ];
          };
          dph-imaginary-words = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.random
              hsPkgs.old-time
              hsPkgs.containers
              hsPkgs.HUnit
              hsPkgs.dph-base
              hsPkgs.dph-prim-par
              hsPkgs.dph-lifted-vseg
            ];
          };
          dph-spectral-dotp = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.random
              hsPkgs.old-time
              hsPkgs.containers
              hsPkgs.HUnit
              hsPkgs.dph-base
              hsPkgs.dph-prim-par
              hsPkgs.dph-lifted-vseg
            ];
          };
          dph-spectral-smvm = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.random
              hsPkgs.old-time
              hsPkgs.containers
              hsPkgs.HUnit
              hsPkgs.dph-base
              hsPkgs.dph-prim-par
              hsPkgs.dph-lifted-vseg
            ];
          };
          dph-spectral-quickhull = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.random
              hsPkgs.old-time
              hsPkgs.containers
              hsPkgs.HUnit
              hsPkgs.dph-base
              hsPkgs.dph-prim-par
              hsPkgs.dph-lifted-vseg
            ];
          };
          dph-spectral-quickhull-vector = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.random
              hsPkgs.old-time
              hsPkgs.containers
              hsPkgs.HUnit
              hsPkgs.dph-base
              hsPkgs.dph-prim-par
              hsPkgs.dph-lifted-vseg
            ];
          };
          dph-spectral-quicksort = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.random
              hsPkgs.old-time
              hsPkgs.containers
              hsPkgs.HUnit
              hsPkgs.dph-base
              hsPkgs.dph-prim-par
              hsPkgs.dph-lifted-vseg
            ];
          };
          dph-real-nbody = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.random
              hsPkgs.old-time
              hsPkgs.containers
              hsPkgs.HUnit
              hsPkgs.dph-base
              hsPkgs.dph-prim-par
              hsPkgs.dph-lifted-vseg
            ];
          };
        };
      };
    }