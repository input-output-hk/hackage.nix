{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "cufft";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Robert Clifton-Everest <robertce@cse.unsw.edu.au>";
      author = "Robert Clifton-Everest <robertce@cse.unsw.edu.au>";
      homepage = "http://github.com/robeverest/cufft";
      url = "";
      synopsis = "Haskell bindings for the CUFFT library";
      description = "The CUFFT library is part of the CUDA developer toolkit.\n\n<http://developer.nvidia.com/cuda-downloads>\n\nIt contains a highly optimised, FFTW compatible, Fast-Fourier Transform\nimplementation that can execute on NVIDIA GPUs.";
      buildType = "Configure";
    };
    components = {
      "cufft" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.cuda)
        ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
        ];
      };
    };
  }