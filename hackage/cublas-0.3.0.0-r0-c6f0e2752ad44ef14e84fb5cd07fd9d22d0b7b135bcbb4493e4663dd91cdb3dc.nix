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
      identifier = { name = "cublas"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) [2012..2017]. Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>, Ben Sherman <benmsherman@gmail.com>";
      maintainer = "Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
      author = "Trevor L. McDonell, Ben Sherman";
      homepage = "";
      url = "";
      synopsis = "FFI bindings to the CUDA BLAS library";
      description = "The cuBLAS library is an implementation of BLAS (Basic Linear Algebra\nSubprograms) for NVIDIA GPUs. This package provides FFI bindings to the\nfunctions of the cuBLAS library. You will need to install the CUDA driver\nand developer toolkit:\n\n<http://developer.nvidia.com/cuda-downloads>\n\nSee the <https://travis-ci.org/tmcdonell/cublas travis-ci.org> build matrix\nfor tested CUDA library versions.";
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