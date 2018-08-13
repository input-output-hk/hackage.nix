{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      nvvm = false;
      debug = false;
      bounds-checks = true;
      unsafe-checks = false;
      internal-checks = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "accelerate-llvm-ptx";
        version = "1.0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
      author = "Trevor L. McDonell";
      homepage = "";
      url = "";
      synopsis = "Accelerate backend generating LLVM";
      description = "This library implements a backend for the /Accelerate/ language which\ngenerates LLVM-IR targeting CUDA capable GPUs. For further information,\nrefer to the main /Accelerate/ package:\n<http://hackage.haskell.org/package/accelerate>";
      buildType = "Simple";
    };
    components = {
      "accelerate-llvm-ptx" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.accelerate)
          (hsPkgs.accelerate-llvm)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.cuda)
          (hsPkgs.directory)
          (hsPkgs.dlist)
          (hsPkgs.fclabels)
          (hsPkgs.filepath)
          (hsPkgs.hashable)
          (hsPkgs.llvm-hs)
          (hsPkgs.llvm-hs-pure)
          (hsPkgs.mtl)
          (hsPkgs.pretty)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
        ] ++ pkgs.lib.optional (_flags.nvvm) (hsPkgs.nvvm);
      };
    };
  }