{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "splitmix";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Fast Splittable PRNG";
        description = "Pure Haskell implementation of SplitMix described in\n\nGuy L. Steele, Jr., Doug Lea, and Christine H. Flood. 2014.\nFast splittable pseudorandom number generators. In Proceedings\nof the 2014 ACM International Conference on Object Oriented\nProgramming Systems Languages & Applications (OOPSLA '14). ACM,\nNew York, NY, USA, 453-472. DOI:\n<https://doi.org/10.1145/2660193.2660195>\n\nThe paper describes a new algorithm /SplitMix/ for /splittable/\npseudorandom number generator that is quite fast: 9 64 bit arithmetic/logical\noperations per 64 bits generated.\n\n/SplitMix/ is tested with two standard statistical test suites (DieHarder and\nTestU01, this implementation only using the former) and it appears to be\nadequate for \"everyday\" use, such as Monte Carlo algorithms and randomized\ndata structures where speed is important.\n\nIn particular, it __should not be used for cryptographic or security applications__,\nbecause generated sequences of pseudorandom values are too predictable\n(the mixing functions are easily inverted, and two successive outputs\nsuffice to reconstruct the internal state).";
        buildType = "Simple";
      };
      components = {
        "splitmix" = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.time
            hsPkgs.random
          ];
        };
        tests = {
          "montecarlo-pi" = {
            depends  = [
              hsPkgs.base
              hsPkgs.splitmix
            ];
          };
          "splitmix-dieharder" = {
            depends  = [
              hsPkgs.base
              hsPkgs.splitmix
              hsPkgs.random
              hsPkgs.deepseq
              hsPkgs.async
              hsPkgs.vector
              hsPkgs.base-compat-batteries
              hsPkgs.bytestring
              hsPkgs.process
              hsPkgs.tf-random
            ];
          };
        };
        benchmarks = {
          "comparison" = {
            depends  = [
              hsPkgs.base
              hsPkgs.splitmix
              hsPkgs.random
              hsPkgs.containers
              hsPkgs.tf-random
              hsPkgs.criterion
            ];
          };
        };
      };
    }