{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "grenade";
          version = "0.1.0";
        };
        license = "BSD-2-Clause";
        copyright = "(c) 2016-2017 Huw Campbell.";
        maintainer = "Huw Campbell <huw.campbell@gmail.com>";
        author = "Huw Campbell <huw.campbell@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Practical Deep Learning in Haskell";
        description = "Grenade is a composable, dependently typed, practical, and fast\nrecurrent neural network library for precise specifications and\ncomplex deep neural networks in Haskell.\n\nGrenade provides an API for composing layers of a neural network\ninto a sequence parallel graph in a type safe manner; running\nnetworks with reverse automatic differentiation to calculate their\ngradients; and applying gradient decent for learning.\n\nDocumentation and examples are available on github\n<https://github.com/HuwCampbell/grenade>.";
        buildType = "Simple";
      };
      components = {
        grenade = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.cereal
            hsPkgs.deepseq
            hsPkgs.exceptions
            hsPkgs.hmatrix
            hsPkgs.MonadRandom
            hsPkgs.mtl
            hsPkgs.primitive
            hsPkgs.text
            hsPkgs.singletons
            hsPkgs.vector
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.grenade
              hsPkgs.hedgehog
              hsPkgs.hmatrix
              hsPkgs.mtl
              hsPkgs.singletons
              hsPkgs.text
              hsPkgs.typelits-witnesses
              hsPkgs.transformers
              hsPkgs.constraints
              hsPkgs.MonadRandom
              hsPkgs.random
              hsPkgs.ad
              hsPkgs.reflection
              hsPkgs.vector
            ];
          };
        };
        benchmarks = {
          bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.criterion
              hsPkgs.grenade
              hsPkgs.hmatrix
            ];
          };
          bench-lstm = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.criterion
              hsPkgs.grenade
              hsPkgs.hmatrix
            ];
          };
        };
      };
    }