{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "simple-genetic-algorithm-mr";
          version = "0.4.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mail@eax.me";
        author = "Alexander Alexeev, JP Moresmau";
        homepage = "http://eax.me/haskell-genetic-algorithm/";
        url = "";
        synopsis = "Simple parallel genetic algorithm implementation";
        description = "Simple parallel genetic algorithm implementation";
        buildType = "Simple";
      };
      components = {
        "simple-genetic-algorithm-mr" = {
          depends  = [
            hsPkgs.base
            hsPkgs.random
            hsPkgs.parallel
            hsPkgs.MonadRandom
            hsPkgs.transformers
          ];
        };
        exes = {
          "ga-sin-example" = {
            depends  = [
              hsPkgs.base
              hsPkgs.random
              hsPkgs.deepseq
              hsPkgs.parallel
              hsPkgs.MonadRandom
              hsPkgs.transformers
            ];
          };
        };
      };
    }