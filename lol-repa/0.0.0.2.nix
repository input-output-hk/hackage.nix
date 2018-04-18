{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      llvm = false;
      opt = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "lol-repa";
          version = "0.0.0.2";
        };
        license = "GPL-2.0-only";
        copyright = "Eric Crockett, Chris Peikert";
        maintainer = "Eric Crockett <ecrockett0@gmail.com>";
        author = "Eric Crockett <ecrockett0@gmail.com>, Chris Peikert <cpeikert@alum.mit.edu>";
        homepage = "https://github.com/cpeikert/Lol";
        url = "";
        synopsis = "A repa backend for <https://hackage.haskell.org/package/lol lol>.";
        description = "Λ ∘ λ (Lol) is a general-purpose library for ring-based lattice cryptography.\nThis package provides a pure Haskell implementation of Lol's Tensor interface\nusing the repa library for parallel arrays.";
        buildType = "Simple";
      };
      components = {
        lol-repa = {
          depends  = [
            hsPkgs.base
            hsPkgs.constraints
            hsPkgs.data-default
            hsPkgs.deepseq
            hsPkgs.lol
            hsPkgs.MonadRandom
            hsPkgs.mtl
            hsPkgs.numeric-prelude
            hsPkgs.reflection
            hsPkgs.repa
            hsPkgs.singletons
            hsPkgs.vector
            hsPkgs.vector-th-unbox
          ];
        };
        tests = {
          test-lol-repa = {
            depends  = [
              hsPkgs.base
              hsPkgs.lol-repa
              hsPkgs.lol-tests
            ];
          };
        };
        benchmarks = {
          bench-lol-repa = {
            depends  = [
              hsPkgs.base
              hsPkgs.DRBG
              hsPkgs.lol
              hsPkgs.lol-benches
              hsPkgs.lol-repa
            ];
          };
        };
      };
    }