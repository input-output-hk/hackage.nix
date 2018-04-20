{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "simple-genetic-algorithm";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mail@eax.me";
        author = "Alexander Alexeev";
        homepage = "http://eax.me/haskell-genetic-algorithm/";
        url = "";
        synopsis = "Simple parallel genetic algorithm implementation";
        description = "Simple parallel genetic algorithm implementation";
        buildType = "Simple";
      };
      components = {
        simple-genetic-algorithm = {
          depends  = [
            hsPkgs.base
            hsPkgs.random
            hsPkgs.parallel
          ];
        };
        exes = {
          ga-sin-example = {
            depends  = [
              hsPkgs.base
              hsPkgs.random
              hsPkgs.deepseq
              hsPkgs.parallel
            ];
          };
        };
      };
    }