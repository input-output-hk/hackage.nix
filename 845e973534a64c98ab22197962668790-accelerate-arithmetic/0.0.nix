{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.14";
        identifier = {
          name = "accelerate-arithmetic";
          version = "0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann <haskell@henning-thielemann.de>";
        homepage = "http://code.haskell.org/~thielema/accelerate-arithmetic/";
        url = "";
        synopsis = "Linear algebra and interpolation using the Accelerate framework";
        description = "Linear algebra and interpolation via the @accelerate@ package.\nThis can be used for computations on GPUs\nbut it does not contain processor optimizations\nor optimizations for CUDA.";
        buildType = "Simple";
      };
      components = {
        accelerate-arithmetic = {
          depends  = [
            hsPkgs.accelerate-utility
            hsPkgs.accelerate
            hsPkgs.utility-ht
            hsPkgs.QuickCheck
            hsPkgs.base
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.accelerate-arithmetic
              hsPkgs.accelerate
              hsPkgs.QuickCheck
              hsPkgs.base
            ];
          };
        };
        benchmarks = {
          newton-inverse = {
            depends  = [
              hsPkgs.accelerate-arithmetic
              hsPkgs.accelerate-utility
              hsPkgs.accelerate-cuda
              hsPkgs.cublas
              hsPkgs.cuda
              hsPkgs.accelerate
              hsPkgs.pooled-io
              hsPkgs.timeit
              hsPkgs.hmatrix
              hsPkgs.random
              hsPkgs.utility-ht
              hsPkgs.base
            ];
          };
        };
      };
    }