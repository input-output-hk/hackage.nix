{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      llvm = true;
      opt = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "lol-apps";
          version = "0.0.0.1";
        };
        license = "GPL-2.0-only";
        copyright = "Eric Crockett, Chris Peikert";
        maintainer = "Eric Crockett <ecrockett0@gmail.com>";
        author = "Eric Crockett <ecrockett0@gmail.com>, Chris Peikert <cpeikert@alum.mit.edu>";
        homepage = "https://github.com/cpeikert/Lol";
        url = "";
        synopsis = "Lattice-based cryptographic applications using Lol.";
        description = "This library contains example cryptographic applications built using\n<https://hackage.haskell.org/package/lol Λ ○ λ>  (Lol),\na general-purpose library for ring-based lattice cryptography.";
        buildType = "Simple";
      };
      components = {
        "lol-apps" = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.lol
            hsPkgs.MonadRandom
            hsPkgs.numeric-prelude
          ];
        };
        tests = {
          "test-apps" = {
            depends  = [
              hsPkgs.base
              hsPkgs.constraints
              hsPkgs.deepseq
              hsPkgs.DRBG
              hsPkgs.lol
              hsPkgs.lol-apps
              hsPkgs.MonadRandom
              hsPkgs.mtl
              hsPkgs.QuickCheck
              hsPkgs.random
              hsPkgs.repa
              hsPkgs.singletons
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.vector
            ];
          };
        };
        benchmarks = {
          "bench-apps" = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.DRBG
              hsPkgs.lol
              hsPkgs.lol-apps
              hsPkgs.MonadRandom
              hsPkgs.mtl
              hsPkgs.singletons
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.repa
            ];
          };
        };
      };
    }