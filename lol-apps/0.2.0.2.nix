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
          name = "lol-apps";
          version = "0.2.0.2";
        };
        license = "GPL-2.0-only";
        copyright = "Eric Crockett, Chris Peikert";
        maintainer = "Eric Crockett <ecrockett0@gmail.com>";
        author = "Eric Crockett <ecrockett0@gmail.com>, Chris Peikert <cpeikert@alum.mit.edu>";
        homepage = "https://github.com/cpeikert/Lol";
        url = "";
        synopsis = "Lattice-based cryptographic applications using <https://hackage.haskell.org/package/lol lol>.";
        description = "This library contains example cryptographic applications built using\n<https://hackage.haskell.org/package/lol lol>,\na general-purpose library for ring-based lattice cryptography.";
        buildType = "Simple";
      };
      components = {
        lol-apps = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.lol
            hsPkgs.MonadRandom
            hsPkgs.mtl
            hsPkgs.numeric-prelude
            hsPkgs.protocol-buffers
            hsPkgs.protocol-buffers-descriptor
            hsPkgs.singletons
            hsPkgs.split
          ];
        };
        exes = {
          homomprf = {
            depends  = [
              hsPkgs.base
              hsPkgs.deepseq
              hsPkgs.DRBG
              hsPkgs.filepath
              hsPkgs.lol
              hsPkgs.lol-apps
              hsPkgs.lol-cpp
              hsPkgs.MonadRandom
              hsPkgs.mtl
              hsPkgs.numeric-prelude
              hsPkgs.singletons
              hsPkgs.time
            ];
          };
          khprf = {
            depends  = [
              hsPkgs.base
              hsPkgs.deepseq
              hsPkgs.lol
              hsPkgs.lol-apps
              hsPkgs.lol-cpp
              hsPkgs.MonadRandom
              hsPkgs.mtl
              hsPkgs.numeric-prelude
            ];
          };
          symmshe = {
            depends  = [
              hsPkgs.base
              hsPkgs.lol
              hsPkgs.lol-apps
              hsPkgs.lol-cpp
              hsPkgs.MonadRandom
              hsPkgs.numeric-prelude
            ];
          };
        };
        tests = {
          test-apps = {
            depends  = [
              hsPkgs.base
              hsPkgs.lol
              hsPkgs.lol-apps
              hsPkgs.lol-cpp
              hsPkgs.lol-repa
              hsPkgs.lol-tests
              hsPkgs.MonadRandom
              hsPkgs.numeric-prelude
              hsPkgs.test-framework
            ];
          };
        };
        benchmarks = {
          bench-apps = {
            depends  = [
              hsPkgs.base
              hsPkgs.DRBG
              hsPkgs.lol
              hsPkgs.lol-apps
              hsPkgs.lol-benches
              hsPkgs.lol-cpp
              hsPkgs.lol-repa
              hsPkgs.MonadRandom
              hsPkgs.mtl
              hsPkgs.numeric-prelude
            ];
          };
        };
      };
    }