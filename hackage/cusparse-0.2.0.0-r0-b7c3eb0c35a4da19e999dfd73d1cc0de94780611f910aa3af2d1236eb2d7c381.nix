{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = { name = "cusparse"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) [2017]. Trevor L. McDonell <trevor.mcdonell@gmail.com>";
      maintainer = "Trevor L. McDonell <trevor.mcdonell@gmail.com>";
      author = "Trevor L. McDonell";
      homepage = "";
      url = "";
      synopsis = "FFI bindings to the CUDA Sparse BLAS library";
      description = "The cuSPARSE library contains a set of basic linear algebra subroutines for\nhandling sparse matrices on NVIDIA GPUs. Sparse vectors and matrices are\nthose where the majority of elements are zero. Sparse BLAS routines are\nspecifically implemented to take advantage of this sparsity. This package\nprovides FFI bindings to the functions of the cuSPARSE library. You will\nneed to install the CUDA driver and developer toolkit:\n\n<http://developer.nvidia.com/cuda-downloads>\n\nSee the <https://travis-ci.org/tmcdonell/cusparse travis-ci.org> build matrix\nfor tested CUDA library versions.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or ((hsPkgs.pkgs-errors).buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or ((hsPkgs.pkgs-errors).buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.cuda or (pkgs.buildPackages.cuda or ((hsPkgs.pkgs-errors).buildToolDepError "cuda")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or ((hsPkgs.pkgs-errors).buildToolDepError "directory")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or ((hsPkgs.pkgs-errors).buildToolDepError "filepath")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."cuda" or ((hsPkgs.pkgs-errors).buildDepError "cuda"))
          (hsPkgs."half" or ((hsPkgs.pkgs-errors).buildDepError "half"))
          (hsPkgs."storable-complex" or ((hsPkgs.pkgs-errors).buildDepError "storable-complex"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or ((hsPkgs.pkgs-errors).buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      };
    }