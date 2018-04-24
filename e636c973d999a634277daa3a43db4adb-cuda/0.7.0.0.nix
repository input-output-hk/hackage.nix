{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.22";
        identifier = {
          name = "cuda";
          version = "0.7.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) [2009..2015]. Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
        maintainer = "Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
        author = "Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
        homepage = "https://github.com/tmcdonell/cuda";
        url = "";
        synopsis = "FFI binding to the CUDA interface for programming NVIDIA GPUs";
        description = "The CUDA library provides a direct, general purpose C-like SPMD programming\nmodel for NVIDIA graphics cards (G8x series onwards). This is a collection\nof bindings to allow you to call and control, although not write, such\nfunctions from Haskell-land. You will need to install the CUDA driver and\ndeveloper toolkit.\n\n<http://developer.nvidia.com/cuda-downloads>\n\nThe configure script will look for your CUDA installation in the standard\nplaces, and if the nvcc compiler is found in your PATH, relative to that.\n\nThis library provides bindings to both the CUDA Driver and Runtime APIs. To\nget started, see one of:\n\n* \"Foreign.CUDA.Driver\"\n\n* \"Foreign.CUDA.Runtime\"\n\nThis release tested with versions 6.0, 6.5, and 7.0 of the CUDA toolkit.\n\nFor additional notes on installing on Windows, see:\n\n<https://github.com/tmcdonell/cuda/blob/master/WINDOWS.markdown>\n";
        buildType = "Custom";
      };
      components = {
        cuda = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.template-haskell
          ];
          build-tools = [ hsPkgs.c2hs ];
        };
        exes = {
          nvidia-device-query = {
            depends  = [
              hsPkgs.base
              hsPkgs.cuda
              hsPkgs.pretty
            ];
          };
        };
      };
    }