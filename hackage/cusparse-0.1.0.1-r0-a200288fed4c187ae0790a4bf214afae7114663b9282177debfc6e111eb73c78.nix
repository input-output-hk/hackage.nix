{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = {
        name = "cusparse";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) [2017]. Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
      maintainer = "Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
      author = "Trevor L. McDonell";
      homepage = "";
      url = "";
      synopsis = "FFI bindings to the CUDA Sparse BLAS library";
      description = "The cuSPARSE library contains a set of basic linear algebra subroutines for\nhandling sparse matrices on NVIDIA GPUs. Sparse vectors and matrices are\nthose where the majority of elements are zero. Sparse BLAS routines are\nspecifically implemented to take advantage of this sparsity. This package\nprovides FFI bindings to the functions of the cuSPARSE library. You will\nneed to install the CUDA driver and developer toolkit:\n\n<http://developer.nvidia.com/cuda-downloads>\n\nSee the <https://travis-ci.org/tmcdonell/cusparse travis-ci.org> build matrix\nfor tested CUDA library versions.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.cuda)
          (hsPkgs.half)
          (hsPkgs.storable-complex)
        ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
        ];
      };
    };
  }