{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "moo";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Sergey Astanin <s.astanin@gmail.com>";
        author = "Sergey Astanin <s.astanin@gmail.com>";
        homepage = "http://www.github.com/astanin/moo/";
        url = "";
        synopsis = "Genetic algorithm library";
        description = "Moo library provides building blocks to build custom\ngenetic algorithms in Haskell. They can be used to\nfind solutions to optimization and search problems.\n\nVariants supported out of the box: binary (using\nbit-strings) and continuous (real-coded).\nPotentially supported variants: permutation,\ntree, hybrid encodings (require customizations).\n\nBinary GAs: binary and Gray encoding; point mutation;\none-point, two-point, and uniform crossover.\nContinuous GAs: Gaussian mutation; BLX-α, UNDX, and\nSBX crossover.\nSelection operators: roulette, and tournament;\nwith optional niching and scaling.\nReplacement strategies: generational with elitism\nand steady state.\nConstrained optimization: random constrained\ninitialization, death penalty, constrained\nselection without a penalty function.\nMulti-objective optimization: NSGA-II\nand constrained NSGA-II.";
        buildType = "Simple";
      };
      components = {
        "moo" = {
          depends  = [
            hsPkgs.base
            hsPkgs.monad-mersenne-random
            hsPkgs.mersenne-random-pure64
            hsPkgs.gray-code
            hsPkgs.random
            hsPkgs.random-shuffle
            hsPkgs.mtl
            hsPkgs.time
            hsPkgs.array
          ];
        };
        tests = {
          "moo-tests" = {
            depends  = [
              hsPkgs.moo
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.random
              hsPkgs.random-shuffle
              hsPkgs.monad-mersenne-random
              hsPkgs.mersenne-random-pure64
              hsPkgs.gray-code
              hsPkgs.mtl
              hsPkgs.time
              hsPkgs.array
              hsPkgs.containers
            ];
          };
        };
      };
    }