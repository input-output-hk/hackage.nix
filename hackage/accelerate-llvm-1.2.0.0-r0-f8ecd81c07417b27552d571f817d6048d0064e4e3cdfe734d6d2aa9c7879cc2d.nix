{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { chase-lev = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "accelerate-llvm"; version = "1.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
      author = "Trevor L. McDonell";
      homepage = "";
      url = "";
      synopsis = "Accelerate backend component generating LLVM IR";
      description = "This library implements direct LLVM IR generation for the /Accelerate/\nlanguage. For further information, refer to the main\n<http://hackage.haskell.org/package/accelerate accelerate> package.\n\n[/Dependencies/]\n\nHaskell dependencies are available from Hackage. The following external\nlibraries are alse required:\n\n* <http://llvm.org LLVM>\n\n* <http://sourceware.org/libffi/ libFFI> (if using <http://hackage.haskell.org/package/accelerate-llvm-native accelerate-llvm-native>)\n\n* <https://developer.nvidia.com/cuda-downloads CUDA> (if using <http://hackage.haskell.org/package/accelerate-llvm-ptx accelerate-llvm-ptx>)\n\n[/Installing LLVM/]\n\n/Homebrew/\n\nExample using Homebrew on macOS:\n\n> brew install llvm-hs/homebrew-llvm/llvm-6.0\n\n/Debian & Ubuntu/\n\nFor Debian/Ubuntu based Linux distributions, the LLVM.org website provides\nbinary distribution packages. Check <http://apt.llvm.org apt.llvm.org> for\ninstructions for adding the correct package database for your OS version,\nand then:\n\n> apt-get install llvm-6.0-dev\n\n/Building from source/\n\nIf your OS does not have an appropriate LLVM distribution available, you can\nalso build from source. Detailed build instructions are available on\n<http://releases.llvm.org/6.0.0/docs/CMake.html LLVM.org>. Make sure to\ninclude the cmake build options\n@-DLLVM_BUILD_LLVM_DYLIB=ON -DLLVM_LINK_LLVM_DYLIB=ON@ so that the @libLLVM@\nshared library will be built.\n\nIf using the @accelerate-llvm-ptx@ backend, also ensure that the\n@LLVM_TARGETS_TO_BUILD@ option includes the @NVPTX@ target (if not\nspecified, all targets are built).\n\n[/Installing accelerate-llvm/]\n\nTo use @accelerate-llvm@ it is important that the @llvm-hs@ package is\ninstalled against the @libLLVM@ shared library, rather than statically\nlinked, so that we can use LLVM from GHCi and Template Haskell. This is the\ndefault configuration, but you can also enforce this explicitly by adding\nthe following to your @stack.yaml@ file:\n\n> flags:\n>   llvm-hs:\n>     shared-llvm: true\n\nOr by specifying the @shared-llvm@ flag to cabal:\n\n> cabal install llvm-hs -fshared-llvm\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.abstract-deque)
          (hsPkgs.accelerate)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default-class)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.dlist)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.llvm-hs)
          (hsPkgs.llvm-hs-pure)
          (hsPkgs.mtl)
          (hsPkgs.mwc-random)
          (hsPkgs.primitive)
          (hsPkgs.template-haskell)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          ] ++ (pkgs.lib).optional (flags.chase-lev) (hsPkgs.chaselev-deque);
        };
      };
    }