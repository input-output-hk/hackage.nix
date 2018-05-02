{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "backprop";
          version = "0.1.5.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Justin Le 2018";
        maintainer = "justin@jle.im";
        author = "Justin Le";
        homepage = "https://github.com/mstksg/backprop#readme";
        url = "";
        synopsis = "Heterogeneous automatic differentation (backpropagation)";
        description = "Write your functions to compute your result, and the library will\nautomatically generate functions to compute your gradient.\n\nImplements heterogeneous reverse-mode automatic differentiation, commonly\nknown as \"backpropagation\".\n\nSee <https://github.com/mstksg/backprop#readme README.md>";
        buildType = "Simple";
      };
      components = {
        backprop = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.deepseq
            hsPkgs.microlens
            hsPkgs.primitive
            hsPkgs.random
            hsPkgs.reflection
            hsPkgs.transformers
            hsPkgs.type-combinators
            hsPkgs.vector
          ];
        };
        benchmarks = {
          backprop-mnist-bench = {
            depends  = [
              hsPkgs.backprop
              hsPkgs.base
              hsPkgs.bifunctors
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.directory
              hsPkgs.hmatrix
              hsPkgs.lens
              hsPkgs.mnist-idx
              hsPkgs.mwc-random
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.vector
            ];
          };
        };
      };
    }