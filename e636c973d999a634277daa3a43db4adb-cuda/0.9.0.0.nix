{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.22";
        identifier = {
          name = "cuda";
          version = "0.9.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) [2009..2017]. Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
        maintainer = "Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
        author = "Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
        homepage = "https://github.com/tmcdonell/cuda";
        url = "";
        synopsis = "FFI binding to the CUDA interface for programming NVIDIA GPUs";
        description = "The CUDA library provides a direct, general purpose C-like SPMD programming\nmodel for NVIDIA graphics cards (G8x series onwards). This is a collection\nof bindings to allow you to call and control, although not write, such\nfunctions from Haskell-land. You will need to install the CUDA driver and\ndeveloper toolkit.\n\n<http://developer.nvidia.com/cuda-downloads>\n\nThe setup script will look for your CUDA installation by checking, in the\nfollowing order:\n\n1. The @CUDA_PATH@ environment variable\n\n2. Searching for @nvcc@ on the @PATH@\n\n3. Checking at @\\/usr\\/local\\/cuda@\n\n4. @CUDA_PATH_Vx_y@ environment variable, for recent CUDA toolkit versions x.y\n\nThis library provides bindings to both the CUDA Driver and Runtime APIs. To\nget started, see one of:\n\n* \"Foreign.CUDA.Driver\" (a short tutorial is available here)\n\n* \"Foreign.CUDA.Runtime\"\n\nSee the <https://travis-ci.org/tmcdonell/cuda travis-ci.org> build matrix\nfor tested CUDA library versions.\n\n[/NOTES:/]\n\nThe setup script for this package requires at least Cabal-1.22. To upgrade,\nexecute one of:\n\n* cabal users: @cabal install Cabal --constraint=\"Cabal >= 1.22\"@\n\n* stack users: @stack setup --upgrade-cabal@\n\nDue to an interaction between GHC-8 and unified virtual address spaces in\nCUDA, this package does not currently work with GHCi on ghc-8.0.1 (compiled\nprograms should work). See the following for more details:\n\n* <https://github.com/tmcdonell/cuda/issues/39>\n\n* <https://ghc.haskell.org/trac/ghc/ticket/12573>\n\nThe bug should be fixed in ghc-8.0.2 and beyond.\n\nFor additional notes on installing on Windows, see:\n\n* <https://github.com/tmcdonell/cuda/blob/master/WINDOWS.markdown>\n";
        buildType = "Custom";
      };
      components = {
        cuda = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.filepath
            hsPkgs.template-haskell
          ];
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