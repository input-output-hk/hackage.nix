{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "cusolver"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) [2017]. Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
      maintainer = "Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
      author = "Trevor L. McDonell";
      homepage = "";
      url = "";
      synopsis = "FFI bindings to CUDA Solver, a LAPACK-like library";
      description = "The cuSolver library provides useful LAPACK-like features implemented on\nNVIDIA GPUs, such as common matrix factorization and triangular solve\nroutines for dense matrices, a sparse least-squares solver routine, and an\neigenvalue solver. This package provides FFI bindings to the functions of\nthe cuSolver library. You will need to install the CUDA driver and developer\ntoolkit:\n\n<http://developer.nvidia.com/cuda-downloads>\n\nSee the <https://travis-ci.org/tmcdonell/cusolver travis-ci.org> build matrix\nfor tested CUDA library versions.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.cuda)
          (hsPkgs.cublas)
          (hsPkgs.cusparse)
          (hsPkgs.half)
          (hsPkgs.storable-complex)
          ];
        build-tools = [ ((hsPkgs.buildPackages).c2hs) ];
        };
      };
    }