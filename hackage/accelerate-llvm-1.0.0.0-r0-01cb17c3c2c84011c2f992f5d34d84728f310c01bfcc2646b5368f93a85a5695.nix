{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
      description = "This library implements direct LLVM IR generation for the /Accelerate/\nlanguage. For further information, refer to the main /Accelerate/ package:\n<http://hackage.haskell.org/package/accelerate>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.abstract-deque)
          (hsPkgs.accelerate)
          (hsPkgs.containers)
          (hsPkgs.data-default-class)
          (hsPkgs.dlist)
          (hsPkgs.exceptions)
          (hsPkgs.fclabels)
          (hsPkgs.llvm-hs)
          (hsPkgs.llvm-hs-pure)
          (hsPkgs.mtl)
          (hsPkgs.mwc-random)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          ] ++ (pkgs.lib).optional (flags.chase-lev) (hsPkgs.chaselev-deque);
        };
      };
    }