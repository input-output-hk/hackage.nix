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
    flags = {
      nvvm = false;
      debug = false;
      bounds-checks = true;
      unsafe-checks = false;
      internal-checks = false;
    };
    package = {
      specVersion = "1.10";
      identifier = { name = "accelerate-llvm-ptx"; version = "1.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
      author = "Trevor L. McDonell";
      homepage = "";
      url = "";
      synopsis = "Accelerate backend for NVIDIA GPUs";
      description = "This library implements a backend for the /Accelerate/ language which\ngenerates LLVM-IR targeting CUDA capable GPUs. For further information,\nrefer to the main <http://hackage.haskell.org/package/accelerate accelerate>\npackage.\n\n[/Dependencies/]\n\nHaskell dependencies are available from Hackage. The following external\nlibraries are alse required:\n\n* <http://llvm.org LLVM>\n\n* <https://developer.nvidia.com/cuda-downloads CUDA>\n\n[/Installing LLVM/]\n\n/Homebrew/\n\nExample using Homebrew on macOS:\n\n> brew install llvm-hs/homebrew-llvm/llvm-5.0\n\n/Debian & Ubuntu/\n\nFor Debian/Ubuntu based Linux distributions, the LLVM.org website provides\nbinary distribution packages. Check <http://apt.llvm.org apt.llvm.org> for\ninstructions for adding the correct package database for your OS version,\nand then:\n\n> apt-get install llvm-5.0-dev\n\n/Building from source/\n\nIf your OS does not have an appropriate LLVM distribution available, you can\nalso build from source. Detailed build instructions are available on\n<http://releases.llvm.org/5.0.0/docs/CMake.html LLVM.org>. Make sure to\ninclude the cmake build options\n@-DLLVM_BUILD_LLVM_DYLIB=ON -DLLVM_LINK_LLVM_DYLIB=ON@ so that the @libLLVM@\nshared library will be built. Also ensure that the @LLVM_TARGETS_TO_BUILD@\noption includes the @NVPTX@ target (if not specified all targets are built).\n\n[/Installing accelerate-llvm/]\n\nTo use @accelerate-llvm@ it is important that the @llvm-hs@ package is\ninstalled against the @libLLVM@ shared library, rather than statically\nlinked, so that we can use LLVM from GHCi and Template Haskell. This is the\ndefault configuration, but you can also enforce this explicitly by adding\nthe following to your @stack.yaml@ file:\n\n> flags:\n>   llvm-hs:\n>     shared-llvm: true\n\nOr by specifying the @shared-llvm@ flag to cabal:\n\n> cabal install llvm-hs -fshared-llvm\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
          (hsPkgs."accelerate-llvm" or (errorHandler.buildDepError "accelerate-llvm"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cuda" or (errorHandler.buildDepError "cuda"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."llvm-hs" or (errorHandler.buildDepError "llvm-hs"))
          (hsPkgs."llvm-hs-pure" or (errorHandler.buildDepError "llvm-hs-pure"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."nvvm" or (errorHandler.buildDepError "nvvm"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
        ];
        buildable = true;
      };
    };
  }