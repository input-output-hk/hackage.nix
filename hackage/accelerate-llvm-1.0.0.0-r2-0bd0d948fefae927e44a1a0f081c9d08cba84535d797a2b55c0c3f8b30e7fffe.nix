let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      debug = true;
      bounds-checks = true;
      unsafe-checks = true;
      internal-checks = true;
      chase-lev = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "accelerate-llvm"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
      author = "Trevor L. McDonell";
      homepage = "";
      url = "";
      synopsis = "Accelerate backend generating LLVM";
      description = "This library implements direct LLVM IR generation for the /Accelerate/\nlanguage. For further information, refer to the main\n<http://hackage.haskell.org/package/accelerate accelerate> package.\n\n[/Dependencies/]\n\nHaskell dependencies are available from Hackage. The following external\nlibraries are alse required:\n\n* <http://llvm.org LLVM>\n\n* <http://sourceware.org/libffi/ libFFI> (if using @accelerate-llvm-native@)\n\n* <https://developer.nvidia.com/cuda-downloads CUDA> (if using @accelerate-llvm-ptx@)\n\n[/Installing LLVM/]\n\n/Homebrew/\n\nExample using Homebrew on macOS:\n\n> brew install llvm-hs/homebrew-llvm/llvm-4.0\n\n/Debian/Ubuntu/\n\nFor Debian/Ubuntu based Linux distributions, the LLVM.org website provides\nbinary distribution packages. Check <http://apt.llvm.org apt.llvm.org> for\ninstructions for adding the correct package database for your OS version,\nand then:\n\n> apt-get install llvm-4.0-dev\n\n/Building from source/\n\nIf your OS does not have an appropriate LLVM distribution available, you can\nalso build from source. Detailed build instructions are available on\n<http://releases.llvm.org/4.0.0/docs/CMake.html LLVM.org>. Make sure to\ninclude the cmake build options\n@-DLLVM_BUILD_LLVM_DYLIB=ON -DLLVM_LINK_LLVM_DYLIB=ON@ so that the @libLLVM@\nshared library will be built.\n\nIf using the @accelerate-llvm-ptx@ backend, also ensure that the\n@LLVM_TARGETS_TO_BUILD@ option includes the @NVPTX@ target (if not\nspecified, all targets are built).\n\n[/Installing accelerate-llvm/]\n\nTo use @accelerate-llvm@ it is important that the @llvm-hs@ package is\ninstalled against the @libLLVM@ shared library, rather than statically\nlinked, so that we can use LLVM from GHCi and Template Haskell. This is the\ndefault configuration, but you can also enforce this explicitly by adding\nthe following to your @stack.yaml@ file:\n\n> flags:\n>   llvm-hs:\n>     shared-llvm: true\n\nOr by specifying the @shared-llvm@ flag to cabal:\n\n> cabal install llvm-hs -fshared-llvm\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."abstract-deque" or (buildDepError "abstract-deque"))
          (hsPkgs."accelerate" or (buildDepError "accelerate"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
          (hsPkgs."dlist" or (buildDepError "dlist"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."fclabels" or (buildDepError "fclabels"))
          (hsPkgs."llvm-hs" or (buildDepError "llvm-hs"))
          (hsPkgs."llvm-hs-pure" or (buildDepError "llvm-hs-pure"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ] ++ (pkgs.lib).optional (flags.chase-lev) (hsPkgs."chaselev-deque" or (buildDepError "chaselev-deque"));
        buildable = true;
        };
      };
    }