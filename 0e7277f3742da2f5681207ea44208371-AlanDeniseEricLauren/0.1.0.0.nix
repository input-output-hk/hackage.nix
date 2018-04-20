{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "AlanDeniseEricLauren";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Echo Nolan";
        maintainer = "echo@echonolan.net";
        author = "Echo Nolan";
        homepage = "http://github.com/enolan/AlanDeniseEricLauren";
        url = "";
        synopsis = "Find the minimal subset/submap satisfying some property.";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        AlanDeniseEricLauren = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.MonadRandom
            hsPkgs.mtl
            hsPkgs.random
            hsPkgs.random-shuffle
            hsPkgs.vector
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.AlanDeniseEricLauren
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.hspec
              hsPkgs.hspec-core
              hsPkgs.QuickCheck
              hsPkgs.random
              hsPkgs.transformers
              hsPkgs.MonadRandom
            ];
          };
        };
        benchmarks = {
          bench = {
            depends  = [
              hsPkgs.AlanDeniseEricLauren
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.criterion
            ];
          };
        };
      };
    }