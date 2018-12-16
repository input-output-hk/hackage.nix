{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      llvm = false;
      cuda = true;
      pcache = false;
      test-suite = false;
      bounds-checks = true;
      unsafe-checks = false;
      internal-checks = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "accelerate";
        version = "0.8.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Manuel M T Chakravarty <chak@cse.unsw.edu.au>";
      author = "Manuel M T Chakravarty,\nGabriele Keller,\nSean Lee,\nTrevor L. McDonell";
      homepage = "http://www.cse.unsw.edu.au/~chak/project/accelerate/";
      url = "";
      synopsis = "An embedded language for accelerated array processing";
      description = "This library defines an embedded language for\nregular, multi-dimensional array computations with\nmultiple backends to facilitate high-performance\nimplementations.  Currently, there are two backends:\n(1) an interpreter that serves as a reference\nimplementation of the intended semantics of the\nlanguage and (2) a CUDA backend generating code for\nCUDA-capable NVIDIA GPUs.\n\nTo use the CUDA backend, you need to have CUDA version 3.x\ninstalled.  The CUDA backend currently doesn't support 'Char'\nand 'Bool' arrays.\n\nKnown bugs in this version:\n<http://trac.haskell.org/accelerate/query?status=new&status=assigned&status=reopened&status=closed&version=0.8.1.0&order=priority>\n\n* New in 0.8.1.0: bug fixes and some performance tweaks\n\n* New in 0.8.0.0: 'replicate', 'slice' and 'foldSeg' supported in the\nCUDA backend; frontend and interpreter support for 'stencil'; bug fixes\n\n* New in 0.7.1.0: the CUDA backend and a number of scalar functions";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = (([
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.haskell98)
          (hsPkgs.pretty)
        ] ++ pkgs.lib.optional (flags.llvm) (hsPkgs.llvm)) ++ pkgs.lib.optionals (flags.cuda) [
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.cuda)
          (hsPkgs.directory)
          (hsPkgs.fclabels)
          (hsPkgs.filepath)
          (hsPkgs.language-c)
          (hsPkgs.monads-fd)
          (hsPkgs.transformers)
          (hsPkgs.unix)
        ]) ++ pkgs.lib.optional (flags.test-suite) (hsPkgs.QuickCheck);
      };
    };
  }