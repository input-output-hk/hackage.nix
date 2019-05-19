{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = { name = "nvvm"; version = "0.8.0.3"; };
      license = "BSD-3-Clause";
      copyright = "[2016] Trevor L. McDonell";
      maintainer = "Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
      author = "Trevor L. McDonell";
      homepage = "https://github.com/tmcdonell/nvvm";
      url = "";
      synopsis = "FFI bindings to NVVM";
      description = "The NVVM library compiles NVVM IR (a subset of LLVM IR) into PTX code which\ncan then be executed on NVIDIA GPUs. In contrast to the standard NVPTX target\nbuilt in to the LLVM toolchain, NVVM includes a set of proprietary\noptimisations which are otherwise only available by compiling CUDA code with\nthe `nvcc` compiler.\n\nThe resulting PTX code can be loaded onto the GPU and executed using the\n'cuda' package:\n\n<https://hackage.haskell.org/package/cuda>\n\nThe NVVM library is a compiler component available a part of the CUDA toolkit:\n\n<https://developer.nvidia.com/cuda-toolkit>\n\nSee the <https://travis-ci.org/tmcdonell/nvvm travis-ci.org> build matrix\nfor tested CUDA library versions.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        (hsPkgs.buildPackages.cuda or (pkgs.buildPackages.cuda))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath))
        (hsPkgs.buildPackages.template-haskell or (pkgs.buildPackages.template-haskell))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cuda)
          (hsPkgs.template-haskell)
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs))
          ];
        };
      };
    }