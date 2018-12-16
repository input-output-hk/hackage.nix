{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      debug = true;
      bounds-checks = true;
      unsafe-checks = true;
      internal-checks = true;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "accelerate-llvm-native";
        version = "1.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
      author = "Trevor L. McDonell";
      homepage = "";
      url = "";
      synopsis = "Accelerate backend generating LLVM";
      description = "This library implements a backend for the /Accelerate/ language which\ngenerates LLVM-IR targeting multicore CPUs. For further information, refer\nto the main /Accelerate/ package:\n<http://hackage.haskell.org/package/accelerate>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.accelerate)
          (hsPkgs.accelerate-llvm)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.dlist)
          (hsPkgs.fclabels)
          (hsPkgs.libffi)
          (hsPkgs.llvm-hs)
          (hsPkgs.llvm-hs-pure)
          (hsPkgs.mtl)
          (hsPkgs.time)
        ];
      };
    };
  }