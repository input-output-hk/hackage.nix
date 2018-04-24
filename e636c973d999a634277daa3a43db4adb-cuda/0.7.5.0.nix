{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.24";
        identifier = {
          name = "cuda";
          version = "0.7.5.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) [2009..2016]. Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
        maintainer = "Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
        author = "Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
        homepage = "https://github.com/tmcdonell/cuda";
        url = "";
        synopsis = "FFI binding to the CUDA interface for programming NVIDIA GPUs";
        description = "The CUDA library provides a direct, general purpose C-like SPMD programming\nmodel for NVIDIA graphics cards (G8x series onwards). This is a collection\nof bindings to allow you to call and control, although not write, such\nfunctions from Haskell-land. You will need to install the CUDA driver and\ndeveloper toolkit.\n\n<http://developer.nvidia.com/cuda-downloads>\n\nThe setup script will look for your CUDA installation in the standard\nplaces, and if the nvcc compiler is found in your PATH, relative to that.\n\nThis library provides bindings to both the CUDA Driver and Runtime APIs. To\nget started, see one of:\n\n* \"Foreign.CUDA.Driver\" (a short tutorial is available here)\n\n* \"Foreign.CUDA.Runtime\"\n\nThis release tested with versions 6.0, 6.5, 7.0, and 7.5 of the CUDA toolkit.\n\n[/NOTES:/]\n\nThe setup script for this package requires at least Cabal-1.24. To upgrade,\nexecute one of:\n\n* cabal users: @cabal install Cabal --constraint=\\\"Cabal >= 1.24\\\"@\n\n* stack users: @stack setup --upgrade-cabal@\n\nDue to an interaction between GHC-8 and unified virtual address spaces in\nCUDA, this package does not currently work with GHCi on ghc-8.0.1 (compiled\nprograms should work). See the following for more details:\n\n* <https://github.com/tmcdonell/cuda/issues/39>\n\n* <https://ghc.haskell.org/trac/ghc/ticket/12573>\n\nFor additional notes on installing on Windows, see:\n\n* <https://github.com/tmcdonell/cuda/blob/master/WINDOWS.markdown>\n";
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