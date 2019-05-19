{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "cuda"; version = "0.6.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) [2009..2014]. Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
      maintainer = "Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
      author = "Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
      homepage = "https://github.com/tmcdonell/cuda";
      url = "";
      synopsis = "FFI binding to the CUDA interface for programming NVIDIA GPUs";
      description = "The CUDA library provides a direct, general purpose C-like SPMD programming\nmodel for NVIDIA graphics cards (G8x series onwards). This is a collection\nof bindings to allow you to call and control, although not write, such\nfunctions from Haskell-land. You will need to install the CUDA driver and\ndeveloper toolkit.\n\n<http://developer.nvidia.com/cuda-downloads>\n\nThe configure script will look for your CUDA installation in the standard\nplaces, and if the nvcc compiler is found in your PATH, relative to that.\n\nThis release is for version 6.0 of the CUDA toolkit.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.bytestring) ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs))
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs))
          ];
        };
      tests = {
        "deviceQuery" = {
          depends = [ (hsPkgs.base) (hsPkgs.cuda) (hsPkgs.pretty) ];
          };
        };
      };
    }