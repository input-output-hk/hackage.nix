{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.24";
        identifier = {
          name = "cufft";
          version = "0.9.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Robert Clifton-Everest <robertce@cse.unsw.edu.au>";
        author = "Robert Clifton-Everest, Trevor L. McDonell";
        homepage = "https://github.com/robeverest/cufft";
        url = "";
        synopsis = "Haskell bindings for the CUFFT library";
        description = "This library contains FFI bindings to the CUFFT library, which provides\nhighly optimised, FFTW compatible, Fast-Fourier Transform (FFT)\nimplementations for NVIDIA GPUs. The cuFFT library is part of the CUDA\ndeveloper toolkit.\n\n<http://developer.nvidia.com/cuda-downloads>\n\nSee the <https://travis-ci.org/tmcdonell/cublas travis-ci.org> build matrix\nfor tested CUDA library versions.";
        buildType = "Custom";
      };
      components = {
        cufft = {
          depends  = [
            hsPkgs.base
            hsPkgs.cuda
          ];
          build-tools = [
            hsPkgs.buildPackages.c2hs
          ];
        };
      };
    }