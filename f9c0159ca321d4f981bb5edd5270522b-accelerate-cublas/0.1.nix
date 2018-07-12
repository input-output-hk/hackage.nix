{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      buildexamples = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.14";
        identifier = {
          name = "accelerate-cublas";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann <haskell@henning-thielemann.de>";
        homepage = "http://hub.darcs.net/thielema/accelerate-cublas/";
        url = "";
        synopsis = "Basic Linear Algebra using native CUBLAS library";
        description = "Basic Linear Algebra using native CUBLAS library.\nCurrently only support for the most basic batched matrix operations.";
        buildType = "Simple";
      };
      components = {
        "accelerate-cublas" = {
          depends  = [
            hsPkgs.accelerate-arithmetic
            hsPkgs.accelerate-utility
            hsPkgs.accelerate-cuda
            hsPkgs.accelerate-io
            hsPkgs.accelerate
            hsPkgs.cublas
            hsPkgs.cuda
            hsPkgs.vector
            hsPkgs.utility-ht
            hsPkgs.base
          ];
        };
        exes = {
          "accelerate-cublas-demo" = {
            depends  = [
              hsPkgs.accelerate-cublas
              hsPkgs.accelerate-cuda
              hsPkgs.accelerate-arithmetic
              hsPkgs.accelerate-utility
              hsPkgs.accelerate
              hsPkgs.random
              hsPkgs.base
            ];
          };
        };
        benchmarks = {
          "newton-inverse" = {
            depends  = [
              hsPkgs.accelerate-cublas
              hsPkgs.accelerate-arithmetic
              hsPkgs.accelerate-utility
              hsPkgs.accelerate-cuda
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