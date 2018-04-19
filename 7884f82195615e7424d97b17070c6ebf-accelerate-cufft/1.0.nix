{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      buildexamples = false;
    } // flags;
    in {
      package = {
        specVersion = "1.14";
        identifier = {
          name = "accelerate-cufft";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann <haskell@henning-thielemann.de>";
        homepage = "http://hub.darcs.net/thielema/accelerate-cufft/";
        url = "";
        synopsis = "Accelerate frontend to the CUFFT library (Fourier transform)";
        description = "An interface for the @accelerate@ framework\nto the Fourier Transform library @cufft@\nprovided by Nvidia for their CUDA enabled graphic cards.";
        buildType = "Simple";
      };
      components = {
        accelerate-cufft = {
          depends  = [
            hsPkgs.cufft
            hsPkgs.cuda
            hsPkgs.accelerate-fourier
            hsPkgs.accelerate-utility
            hsPkgs.accelerate-llvm-ptx
            hsPkgs.accelerate
            hsPkgs.base
          ];
        };
        exes = {
          accelerate-cufft-demo = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.accelerate-cufft
              hsPkgs.accelerate-llvm-ptx
              hsPkgs.accelerate
              hsPkgs.base
            ];
          };
          accelerate-cufft-demo-merged = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.accelerate-llvm-ptx
              hsPkgs.accelerate
              hsPkgs.cufft
              hsPkgs.cuda
              hsPkgs.base
            ];
          };
          accelerate-cufft-demo-separate = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.accelerate-llvm-ptx
              hsPkgs.accelerate
              hsPkgs.cufft
              hsPkgs.cuda
              hsPkgs.base
            ];
          };
          cufft-demo = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.cufft
              hsPkgs.cuda
              hsPkgs.base
            ];
          };
        };
      };
    }