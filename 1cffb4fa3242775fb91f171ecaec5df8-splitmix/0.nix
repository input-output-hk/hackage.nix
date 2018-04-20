{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "splitmix";
          version = "0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Fast Splittable PRNG";
        description = "Pure Haskell implementation of SplitMix described in\n\nGuy L. Steele, Jr., Doug Lea, and Christine H. Flood. 2014.\nFast splittable pseudorandom number generators. In Proceedings\nof the 2014 ACM International Conference on Object Oriented\nProgramming Systems Languages & Applications (OOPSLA '14). ACM,\nNew York, NY, USA, 453-472. DOI:\n<https://doi.org/10.1145/2660193.2660195>";
        buildType = "Simple";
      };
      components = {
        splitmix = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.random
          ];
        };
        tests = {
          montecarlo-pi = {
            depends  = [
              hsPkgs.base
              hsPkgs.splitmix
            ];
          };
          dieharder-input = {
            depends  = [
              hsPkgs.base
              hsPkgs.splitmix
              hsPkgs.random
              hsPkgs.base-compat
              hsPkgs.bytestring
              hsPkgs.tf-random
            ];
          };
        };
        benchmarks = {
          comparison = {
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