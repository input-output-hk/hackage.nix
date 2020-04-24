{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = { name = "cufft"; version = "0.9.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Trevor L. McDonell <trevor.mcdonell@gmail.com>";
      author = "Robert Clifton-Everest, Trevor L. McDonell";
      homepage = "https://github.com/robeverest/cufft";
      url = "";
      synopsis = "Haskell bindings for the CUFFT library";
      description = "This library contains FFI bindings to the CUFFT library, which provides\nhighly optimised, FFTW compatible, Fast-Fourier Transform (FFT)\nimplementations for NVIDIA GPUs. The cuFFT library is part of the CUDA\ndeveloper toolkit.\n\n<http://developer.nvidia.com/cuda-downloads>\n\nSee the <https://travis-ci.org/tmcdonell/cublas travis-ci.org> build matrix\nfor tested CUDA library versions.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or ((hsPkgs.pkgs-errors).buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or ((hsPkgs.pkgs-errors).buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.cuda or (pkgs.buildPackages.cuda or ((hsPkgs.pkgs-errors).buildToolDepError "cuda")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or ((hsPkgs.pkgs-errors).buildToolDepError "directory")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or ((hsPkgs.pkgs-errors).buildToolDepError "filepath")))
        (hsPkgs.buildPackages.template-haskell or (pkgs.buildPackages.template-haskell or ((hsPkgs.pkgs-errors).buildToolDepError "template-haskell")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."cuda" or ((hsPkgs.pkgs-errors).buildDepError "cuda"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or ((hsPkgs.pkgs-errors).buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      };
    }