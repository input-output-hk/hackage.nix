{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "quantfin";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "timothy.dees@gmail.com";
        author = "Timothy Dees";
        homepage = "https://github.com/boundedvariation/quantfin";
        url = "";
        synopsis = "Quant finance library in pure Haskell.";
        description = "";
        buildType = "Simple";
      };
      components = {
        quantfin = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.random-fu
            hsPkgs.containers
            hsPkgs.rvar
            hsPkgs.mersenne-random-pure64
            hsPkgs.random-source
            hsPkgs.random
          ];
        };
        exes = {
          example = {
            depends  = [
              hsPkgs.base
              hsPkgs.quantfin
            ];
          };
        };
      };
    }