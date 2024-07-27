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
      identifier = { name = "cufft"; version = "0.9.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Robert Clifton-Everest <robertce@cse.unsw.edu.au>";
      author = "Robert Clifton-Everest, Trevor L. McDonell";
      homepage = "https://github.com/robeverest/cufft";
      url = "";
      synopsis = "Haskell bindings for the CUFFT library";
      description = "This library contains FFI bindings to the CUFFT library, which provides\nhighly optimised, FFTW compatible, Fast-Fourier Transform (FFT)\nimplementations for NVIDIA GPUs. The cuFFT library is part of the CUDA\ndeveloper toolkit.\n\n<http://developer.nvidia.com/cuda-downloads>\n\nSee the <https://travis-ci.org/tmcdonell/cublas travis-ci.org> build matrix\nfor tested CUDA library versions.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.cuda or (pkgs.pkgsBuildBuild.cuda or (errorHandler.setupDepError "cuda")))
        (hsPkgs.pkgsBuildBuild.directory or (pkgs.pkgsBuildBuild.directory or (errorHandler.setupDepError "directory")))
        (hsPkgs.pkgsBuildBuild.filepath or (pkgs.pkgsBuildBuild.filepath or (errorHandler.setupDepError "filepath")))
        (hsPkgs.pkgsBuildBuild.template-haskell or (pkgs.pkgsBuildBuild.template-haskell or (errorHandler.setupDepError "template-haskell")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cuda" or (errorHandler.buildDepError "cuda"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.c2hs.components.exes.c2hs or (pkgs.pkgsBuildBuild.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
    };
  }