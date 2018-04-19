{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "dph-examples";
          version = "0.6.0.2";
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
              hsPkgs.dph-base
              hsPkgs.dph-prim-par
              hsPkgs.dph-lifted-vseg
              hsPkgs.HUnit
            ];
          };
          dph-smoke-concat = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.random
              hsPkgs.old-time
              hsPkgs.containers
              hsPkgs.dph-base
              hsPkgs.dph-prim-par
              hsPkgs.dph-lifted-vseg
              hsPkgs.HUnit
            ];
          };
          dph-smoke-sumsq = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.random
              hsPkgs.old-time
              hsPkgs.containers
              hsPkgs.dph-base
              hsPkgs.dph-prim-par
              hsPkgs.dph-lifted-vseg
              hsPkgs.HUnit
            ];
          };
          dph-smoke-evens = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.random
              hsPkgs.old-time
              hsPkgs.containers
              hsPkgs.dph-base
              hsPkgs.dph-prim-par
              hsPkgs.dph-lifted-vseg
              hsPkgs.HUnit
            ];
          };
          dph-smoke-indices = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.random
              hsPkgs.old-time
              hsPkgs.containers
              hsPkgs.dph-base
              hsPkgs.dph-prim-par
              hsPkgs.dph-lifted-vseg
              hsPkgs.HUnit
            ];
          };
          dph-smoke-rank = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.random
              hsPkgs.old-time
              hsPkgs.containers
              hsPkgs.dph-base
              hsPkgs.dph-prim-par
              hsPkgs.dph-lifted-vseg
              hsPkgs.HUnit
            ];
          };
          dph-smoke-reverse = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.random
              hsPkgs.old-time
              hsPkgs.containers
              hsPkgs.dph-base
              hsPkgs.dph-prim-par
              hsPkgs.dph-lifted-vseg
              hsPkgs.HUnit
            ];
          };
          dph-imaginary-words = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.random
              hsPkgs.old-time
              hsPkgs.containers
              hsPkgs.dph-base
              hsPkgs.dph-prim-par
              hsPkgs.dph-lifted-vseg
              hsPkgs.HUnit
            ];
          };
          dph-spectral-dotp = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.random
              hsPkgs.old-time
              hsPkgs.containers
              hsPkgs.dph-base
              hsPkgs.dph-prim-par
              hsPkgs.dph-lifted-vseg
              hsPkgs.HUnit
            ];
          };
          dph-spectral-smvm = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.random
              hsPkgs.old-time
              hsPkgs.containers
              hsPkgs.dph-base
              hsPkgs.dph-prim-par
              hsPkgs.dph-lifted-vseg
              hsPkgs.HUnit
            ];
          };
          dph-spectral-quickhull = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.random
              hsPkgs.old-time
              hsPkgs.containers
              hsPkgs.dph-base
              hsPkgs.dph-prim-par
              hsPkgs.dph-lifted-vseg
              hsPkgs.HUnit
            ];
          };
          dph-spectral-quickhull-vector = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.random
              hsPkgs.old-time
              hsPkgs.containers
              hsPkgs.dph-base
              hsPkgs.dph-prim-par
              hsPkgs.dph-lifted-vseg
              hsPkgs.HUnit
            ];
          };
          dph-spectral-quicksort = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.random
              hsPkgs.old-time
              hsPkgs.containers
              hsPkgs.dph-base
              hsPkgs.dph-prim-par
              hsPkgs.dph-lifted-vseg
              hsPkgs.HUnit
            ];
          };
          dph-real-nbody-gloss = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.random
              hsPkgs.old-time
              hsPkgs.containers
              hsPkgs.dph-base
              hsPkgs.dph-prim-par
              hsPkgs.dph-lifted-vseg
              hsPkgs.HUnit
              hsPkgs.gloss
            ];
          };
          dph-real-nbody = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.random
              hsPkgs.old-time
              hsPkgs.containers
              hsPkgs.dph-base
              hsPkgs.dph-prim-par
              hsPkgs.dph-lifted-vseg
              hsPkgs.HUnit
            ];
          };
        };
      };
    }