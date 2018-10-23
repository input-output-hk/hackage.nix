{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = {
        name = "cublas";
        version = "0.5.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) [2012..2017]. Trevor L. McDonell <trevor.mcdonell@gmail.com>, Ben Sherman <benmsherman@gmail.com>";
      maintainer = "Trevor L. McDonell <trevor.mcdonell@gmail.com>";
      author = "Trevor L. McDonell, Ben Sherman";
      homepage = "";
      url = "";
      synopsis = "FFI bindings to the CUDA BLAS library";
      description = "The cuBLAS library is an implementation of BLAS (Basic Linear Algebra\nSubprograms) for NVIDIA GPUs. This package provides FFI bindings to the\nfunctions of the cuBLAS library. You will need to install the CUDA driver\nand developer toolkit:\n\n<http://developer.nvidia.com/cuda-downloads>\n\nSee the <https://travis-ci.org/tmcdonell/cublas travis-ci.org> build matrix\nfor tested CUDA library versions.";
      buildType = "Custom";
    };
    components = {
      "cublas" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.cuda)
          (hsPkgs.half)
          (hsPkgs.storable-complex)
          (hsPkgs.template-haskell)
        ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
        ];
      };
    };
  }