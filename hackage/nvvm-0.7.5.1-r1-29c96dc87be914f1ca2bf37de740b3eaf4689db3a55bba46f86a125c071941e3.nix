{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.22";
      identifier = { name = "nvvm"; version = "0.7.5.1"; };
      license = "BSD-3-Clause";
      copyright = "[2016] Trevor L. McDonell";
      maintainer = "Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
      author = "Trevor L. McDonell";
      homepage = "https://github.com/tmcdonell/nvvm";
      url = "";
      synopsis = "FFI bindings to NVVM";
      description = "The NVVM library compiles NVVM IR (a subset of LLVM IR) into PTX code which\ncan then be executed on NVIDIA GPUs. In contrast to the standard NVPTX target\nbuilt in to the LLVM toolchain, NVVM includes a set of proprietary\noptimisations which are otherwise only available by compiling CUDA code with\nthe `nvcc` compiler.\n\nThe resulting PTX code can be loaded onto the GPU and executed using the\n'cuda' package:\n\n<https://hackage.haskell.org/package/cuda>\n\nThe NVVM library is a compiler component available a part of the CUDA toolkit:\n\n<https://developer.nvidia.com/cuda-toolkit>\n\nThe configure step will look for your CUDA installation in the standard\nplaces, and if the `nvcc` compiler is found in your `PATH`, relative to that.\n\nThis package tested with version 7.5 of the CUDA toolkit.\n";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or ((hsPkgs.pkgs-errors).buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or ((hsPkgs.pkgs-errors).buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or ((hsPkgs.pkgs-errors).buildToolDepError "directory")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or ((hsPkgs.pkgs-errors).buildToolDepError "filepath")))
        (hsPkgs.buildPackages.template-haskell or (pkgs.buildPackages.template-haskell or ((hsPkgs.pkgs-errors).buildToolDepError "template-haskell")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cuda" or ((hsPkgs.pkgs-errors).buildDepError "cuda"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or ((hsPkgs.pkgs-errors).buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      };
    }