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
      more-pp = false;
      pcache = false;
      test-suite = false;
      bounds-checks = true;
      unsafe-checks = false;
      internal-checks = false;
      io = false;
      inplace = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "accelerate";
        version = "0.10.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Manuel M T Chakravarty <chak@cse.unsw.edu.au>";
      author = "Manuel M T Chakravarty,\nGabriele Keller,\nSean Lee,\nBen Lever,\nTrevor L. McDonell,\nSean Seefried";
      homepage = "http://www.cse.unsw.edu.au/~chak/project/accelerate/";
      url = "";
      synopsis = "An embedded language for accelerated array processing";
      description = "This library defines an embedded language for\nregular, multi-dimensional array computations with\nmultiple backends to facilitate high-performance\nimplementations.  Currently, there are two backends:\n(1) an interpreter that serves as a reference\nimplementation of the intended semantics of the\nlanguage and (2) a CUDA backend generating code for\nCUDA-capable NVIDIA GPUs.\n\nTo use the CUDA backend, you need to have CUDA version 3.x\ninstalled.  The CUDA backend currently doesn't support 'Char'\nand 'Bool' arrays.\n\nAn experimental OpenCL backend is available at <https://github.com/HIPERFIT/accelerate-opencl>\nand an experimental multicore CPU backend building on the Repa array library\nis available at <https://github.com/blambo/accelerate-repa>.\n\nKnown bugs: <https://github.com/mchakravarty/accelerate/issues>\n\n* New in 0.10.0.0: Complete sharing recovery for scalar expressions (but\ncurrently disabled by default). Also bug fixes in array sharing recovery\nand a few new convenience functions.\n\n* New in 0.9.0.0: Streaming, precompilation, Repa-style indices, stencils,\nmore scans, rank-polymorphic fold, generate, block I/O & many bug fixes\n\n* New in 0.8.1.0: bug fixes and some performance tweaks\n\n* New in 0.8.0.0: 'replicate', 'slice' and 'foldSeg' supported in the\nCUDA backend; frontend and interpreter support for 'stencil'; bug fixes\n\n* New in 0.7.1.0: the CUDA backend and a number of scalar functions\n\nFor documentation, see the homepage and <https://github.com/mchakravarty/accelerate/wiki>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = ((([
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.ghc-prim)
          (hsPkgs.mtl)
          (hsPkgs.pretty)
        ] ++ pkgs.lib.optional (flags.llvm) (hsPkgs.llvm)) ++ pkgs.lib.optionals (flags.cuda) [
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.cuda)
          (hsPkgs.fclabels)
          (hsPkgs.filepath)
          (hsPkgs.language-c)
          (hsPkgs.transformers)
          (hsPkgs.unix)
          (hsPkgs.zlib)
        ]) ++ pkgs.lib.optionals (flags.io) [
          (hsPkgs.bytestring)
          (hsPkgs.vector)
        ]) ++ pkgs.lib.optionals (flags.more-pp) [
          (hsPkgs.bytestring)
          (hsPkgs.blaze-html)
          (hsPkgs.text)
        ];
      };
    };
  }