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
          version = "0.12.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
        author = "Manuel M T Chakravarty,\nGabriele Keller,\nSean Lee,\nTrevor L. McDonell";
        homepage = "http://www.cse.unsw.edu.au/~chak/project/accelerate/";
        url = "";
        synopsis = "Accelerate backend for NVIDIA GPUs";
        description = "This library implements a backend for the Accelerate language instrumented for\nparallel execution on CUDA-capable NVIDIA GPUs.\n\nTo use this backend you need CUDA version 3.x or later installed. Note that\ncurrently there is no support for 'Char' and 'Bool' arrays (this is a\nlimitation of the front-end language).";
        buildType = "Configure";
      };
      components = {
        accelerate-cuda = {
          depends  = [
            hsPkgs.accelerate
            hsPkgs.array
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.containers
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
            hsPkgs.pretty
            hsPkgs.process
            hsPkgs.srcloc
            hsPkgs.symbol
            hsPkgs.transformers
            hsPkgs.unordered-containers
          ] ++ (if system.isWindows
            then [ hsPkgs.Win32 ]
            else [ hsPkgs.unix ]);
        };
      };
    }