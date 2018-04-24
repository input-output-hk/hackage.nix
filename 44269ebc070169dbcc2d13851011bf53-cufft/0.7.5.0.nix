{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.22";
        identifier = {
          name = "cufft";
          version = "0.7.5.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Robert Clifton-Everest <robertce@cse.unsw.edu.au>";
        author = "Robert Clifton-Everest, Trevor L. McDonell";
        homepage = "https://github.com/robeverest/cufft";
        url = "";
        synopsis = "Haskell bindings for the CUFFT library";
        description = "This library contains FFI bindings to the CUFFT library, which provides\nhighly optimised, FFTW compatible, Fast-Fourier Transform (FFT)\nimplementations for NVIDIA GPUs. The CUFFT library is part of the CUDA\ndeveloper toolkit.\n\n<http://developer.nvidia.com/cuda-downloads>\n\nThe configure script will look for your CUDA installation in the standard\nplaces, and if the `nvcc` compiler is in your PATH, relative to that.\n\nThis release tested with versions 6.5, 7.0, and 7.5 of the CUDA toolkit.\n";
        buildType = "Custom";
      };
      components = {
        cufft = {
          depends  = [
            hsPkgs.base
            hsPkgs.cuda
          ];
          build-tools = [ hsPkgs.c2hs ];
        };
      };
    }