{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "accelerate-llvm-native";
          version = "1.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
        author = "Trevor L. McDonell";
        homepage = "";
        url = "";
        synopsis = "Accelerate backend for multicore CPUs";
        description = "This library implements a backend for the /Accelerate/ language which\ngenerates LLVM-IR targeting multicore CPUs. For further information, refer\nto the main <http://hackage.haskell.org/package/accelerate accelerate>\npackage.\n\n[/Dependencies/]\n\nHaskell dependencies are available from Hackage. The following external\nlibraries are alse required:\n\n* <http://llvm.org LLVM>\n\n* <http://sourceware.org/libffi/ libFFI>\n\n[/Installing LLVM/]\n\n/Homebrew/\n\nExample using Homebrew on macOS:\n\n> brew install llvm-hs/homebrew-llvm/llvm-6.0\n\n/Debian & Ubuntu/\n\nFor Debian/Ubuntu based Linux distributions, the LLVM.org website provides\nbinary distribution packages. Check <http://apt.llvm.org apt.llvm.org> for\ninstructions for adding the correct package database for your OS version,\nand then:\n\n> apt-get install llvm-6.0-dev\n\n/Building from source/\n\nIf your OS does not have an appropriate LLVM distribution available, you can\nalso build from source. Detailed build instructions are available on\n<http://releases.llvm.org/6.0.0/docs/CMake.html LLVM.org>. Make sure to\ninclude the cmake build options\n@-DLLVM_BUILD_LLVM_DYLIB=ON -DLLVM_LINK_LLVM_DYLIB=ON@ so that the @libLLVM@\nshared library will be built.\n\n[/Installing accelerate-llvm/]\n\nTo use @accelerate-llvm@ it is important that the @llvm-hs@ package is\ninstalled against the @libLLVM@ shared library, rather than statically\nlinked, so that we can use LLVM from GHCi and Template Haskell. This is the\ndefault configuration, but you can also enforce this explicitly by adding\nthe following to your @stack.yaml@ file:\n\n> flags:\n>   llvm-hs:\n>     shared-llvm: true\n\nOr by specifying the @shared-llvm@ flag to cabal:\n\n> cabal install llvm-hs -fshared-llvm\n";
        buildType = "Simple";
      };
      components = {
        accelerate-llvm-native = {
          depends  = (([
            hsPkgs.base
            hsPkgs.accelerate
            hsPkgs.accelerate-llvm
            hsPkgs.bytestring
            hsPkgs.Cabal
            hsPkgs.cereal
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.dlist
            hsPkgs.filepath
            hsPkgs.ghc
            hsPkgs.hashable
            hsPkgs.libffi
            hsPkgs.llvm-hs
            hsPkgs.llvm-hs-pure
            hsPkgs.mtl
            hsPkgs.template-haskell
            hsPkgs.time
            hsPkgs.unique
          ] ++ pkgs.lib.optionals system.isOsx [
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.ghc-prim
            hsPkgs.unix
            hsPkgs.vector
          ]) ++ pkgs.lib.optionals system.isLinux [
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.ghc-prim
            hsPkgs.unix
            hsPkgs.vector
          ]) ++ pkgs.lib.optional system.isWindows hsPkgs.bytestring;
          build-tools = pkgs.lib.optional system.isOsx hsPkgs.c2hs ++ pkgs.lib.optional system.isLinux hsPkgs.c2hs;
        };
        tests = {
          nofib-llvm-native = {
            depends  = [
              hsPkgs.base
              hsPkgs.accelerate
              hsPkgs.accelerate-llvm-native
            ];
          };
        };
      };
    }