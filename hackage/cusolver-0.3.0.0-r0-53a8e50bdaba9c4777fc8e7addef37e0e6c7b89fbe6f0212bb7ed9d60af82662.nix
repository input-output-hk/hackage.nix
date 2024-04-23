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
      specVersion = "1.24";
      identifier = { name = "cusolver"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) [2017..2018]. Trevor L. McDonell <trevor.mcdonell@gmail.com>";
      maintainer = "Trevor L. McDonell <trevor.mcdonell@gmail.com>";
      author = "Trevor L. McDonell <trevor.mcdonell@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "FFI bindings to CUDA Solver, a LAPACK-like library";
      description = "The cuSolver library provides useful LAPACK-like features implemented on\nNVIDIA GPUs, such as common matrix factorization and triangular solve\nroutines for dense matrices, a sparse least-squares solver routine, and an\neigenvalue solver. This package provides FFI bindings to the functions of\nthe cuSolver library. You will need to install the CUDA driver and developer\ntoolkit:\n\n<http://developer.nvidia.com/cuda-downloads>\n\nSee the <https://travis-ci.org/tmcdonell/cusolver travis-ci.org> build matrix\nfor tested CUDA library versions.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.setupDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.buildPackages.cuda or (pkgs.buildPackages.cuda or (errorHandler.setupDepError "cuda")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or (errorHandler.setupDepError "directory")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or (errorHandler.setupDepError "filepath")))
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
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs.components.exes.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
    };
  }