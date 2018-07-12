{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      buildexamples = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hs-carbon";
          version = "0.0.0.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "cholmgreen@gmail.com";
        author = "Casper M. H. Holmgreen";
        homepage = "";
        url = "";
        synopsis = "A Haskell framework for parallel monte carlo simulations";
        description = "hs-carbon is a PRNG-agnostic Haskell framework for running monte-carlo\nsimulations. The library will provide several \"skeletons\" for abstracting\naway common usage patterns.";
        buildType = "Simple";
      };
      components = {
        "hs-carbon" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.random
            hsPkgs.parallel
            hsPkgs.deepseq
          ];
        };
        exes = {
          "PiExample" = {
            depends  = [
              hsPkgs.base
              hsPkgs.random
              hsPkgs.mtl
              hsPkgs.tf-random
              hsPkgs.parallel
              hsPkgs.deepseq
            ];
          };
          "IntegralExample" = {
            depends  = [
              hsPkgs.base
              hsPkgs.random
              hsPkgs.mtl
              hsPkgs.tf-random
              hsPkgs.parallel
              hsPkgs.deepseq
            ];
          };
          "TransportExample" = {
            depends  = [
              hsPkgs.base
              hsPkgs.random
              hsPkgs.mtl
              hsPkgs.tf-random
              hsPkgs.parallel
              hsPkgs.gloss
              hsPkgs.monad-loops
              hsPkgs.deepseq
            ];
          };
        };
      };
    }