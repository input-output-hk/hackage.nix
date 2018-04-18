{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      debug = false;
      bounds-checks = true;
      unsafe-checks = false;
      internal-checks = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "accelerate-cuda";
          version = "0.13.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
        author = "Manuel M T Chakravarty,\nRobert Clifton-Everest,\nGabriele Keller,\nSean Lee,\nTrevor L. McDonell";
        homepage = "https://github.com/AccelerateHS/accelerate-cuda/";
        url = "";
        synopsis = "Accelerate backend for NVIDIA GPUs";
        description = "This library implements a backend for the /Accelerate/ language instrumented\nfor parallel execution on CUDA-capable NVIDIA GPUs. For further information,\nrefer to the main /Accelerate/ package:\n<http://hackage.haskell.org/package/accelerate>\n\nTo use this backend you will need:\n\n1. A CUDA-enabled NVIDIA GPU with, for full functionality, compute\ncapability 1.2 or greater. See the table on Wikipedia for supported GPUs:\n<http://en.wikipedia.org/wiki/CUDA#Supported_GPUs>\n\n2. The CUDA SDK, available from the NVIDIA Developer Zone:\n<http://developer.nvidia.com/cuda-downloads>\n\nSee the Haddock documentation for additional information related to using this\nbackend.\n\nCompile modules that use the CUDA backend with the @-threaded@ flag.\n";
        buildType = "Custom";
      };
      components = {
        accelerate-cuda = {
          depends  = [
            hsPkgs.accelerate
            hsPkgs.base
            hsPkgs.array
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.cryptohash
            hsPkgs.cuda
            hsPkgs.directory
            hsPkgs.fclabels
            hsPkgs.filepath
            hsPkgs.hashable
            hsPkgs.hashtables
            hsPkgs.language-c-quote
            hsPkgs.mainland-pretty
            hsPkgs.mtl
            hsPkgs.old-time
            hsPkgs.pretty
            hsPkgs.process
            hsPkgs.SafeSemaphore
            hsPkgs.srcloc
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.unordered-containers
          ] ++ (if system.isWindows
            then [ hsPkgs.Win32 ]
            else [ hsPkgs.unix ]);
        };
      };
    }