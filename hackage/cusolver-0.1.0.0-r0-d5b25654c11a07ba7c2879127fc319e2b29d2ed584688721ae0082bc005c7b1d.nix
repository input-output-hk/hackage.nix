{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
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
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.cuda or (pkgs.pkgsBuildBuild.cuda or (errorHandler.setupDepError "cuda")))
        (hsPkgs.pkgsBuildBuild.directory or (pkgs.pkgsBuildBuild.directory or (errorHandler.setupDepError "directory")))
        (hsPkgs.pkgsBuildBuild.filepath or (pkgs.pkgsBuildBuild.filepath or (errorHandler.setupDepError "filepath")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cuda" or (errorHandler.buildDepError "cuda"))
          (hsPkgs."cublas" or (errorHandler.buildDepError "cublas"))
          (hsPkgs."cusparse" or (errorHandler.buildDepError "cusparse"))
          (hsPkgs."half" or (errorHandler.buildDepError "half"))
          (hsPkgs."storable-complex" or (errorHandler.buildDepError "storable-complex"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.c2hs.components.exes.c2hs or (pkgs.pkgsBuildBuild.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
    };
  }