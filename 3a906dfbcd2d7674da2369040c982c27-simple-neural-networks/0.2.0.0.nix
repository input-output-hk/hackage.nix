{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "simple-neural-networks";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mail@eax.me";
        author = "Alexander Alexeev";
        homepage = "http://eax.me/haskell-neural-networks/";
        url = "";
        synopsis = "Simple parallel neural networks implementation";
        description = "Simple parallel neural networks implementation";
        buildType = "Simple";
      };
      components = {
        "simple-neural-networks" = {
          depends  = [
            hsPkgs.base
            hsPkgs.random
            hsPkgs.split
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.parallel
          ];
        };
        exes = {
          "nn-xor-logistic-example" = {
            depends  = [
              hsPkgs.base
              hsPkgs.random
              hsPkgs.split
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.parallel
            ];
          };
          "nn-xor-tanh-example" = {
            depends  = [
              hsPkgs.base
              hsPkgs.random
              hsPkgs.split
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.parallel
            ];
          };
        };
      };
    }