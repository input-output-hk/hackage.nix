{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      emu = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "cuda";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) [2009..2010]. Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
        maintainer = "Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
        author = "Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
        homepage = "";
        url = "";
        synopsis = "FFI binding to the CUDA interface for programming NVIDIA GPUs";
        description = "The CUDA library provides a direct, general purpose C-like SPMD programming\nmodel for NVIDIA graphics cards (G8x series onwards). This is a collection\nof bindings to allow you to call and control, although not write, such\nfunctions from Haskell-land. You will need to install the CUDA driver and\ndeveloper toolkit.\n\n<http://developer.nvidia.com/object/cuda.html>\n\nNote that on Snow Leopard, the c2hs preprocessor is confused by the notation\nfor Apple's Blocks extension, so to work around this:\n\n> cabal install --c2hs-option=-ccpp-4.0\n";
        buildType = "Configure";
      };
      components = {
        cuda = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.bytestring
            hsPkgs.extensible-exceptions
          ];
          libs = [
            pkgs.cuda
          ] ++ (if _flags.emu
            then [ pkgs.cudartemu ]
            else [ pkgs.cudart ]);
        };
      };
    }