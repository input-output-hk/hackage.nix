{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      debug = false;
      more-pp = false;
      bounds-checks = true;
      unsafe-checks = false;
      internal-checks = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "accelerate";
        version = "0.15.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Manuel M T Chakravarty <chak@cse.unsw.edu.au>";
      author = "Manuel M T Chakravarty,\nRobert Clifton-Everest,\nGabriele Keller,\nSean Lee,\nBen Lever,\nTrevor L. McDonell,\nRyan Newtown,\nSean Seefried";
      homepage = "https://github.com/AccelerateHS/accelerate/";
      url = "";
      synopsis = "An embedded language for accelerated array processing";
      description = "@Data.Array.Accelerate@ defines an embedded array language for computations\nfor high-performance computing in Haskell. Computations on multi-dimensional,\nregular arrays are expressed in the form of parameterised collective\noperations, such as maps, reductions, and permutations. These computations may\nthen be online compiled and executed on a range of architectures.\n\n[/A simple example/]\n\nAs a simple example, consider the computation of a dot product of two vectors\nof floating point numbers:\n\n> dotp :: Acc (Vector Float) -> Acc (Vector Float) -> Acc (Scalar Float)\n> dotp xs ys = fold (+) 0 (zipWith (*) xs ys)\n\nExcept for the type, this code is almost the same as the corresponding Haskell\ncode on lists of floats. The types indicate that the computation may be\nonline-compiled for performance - for example, using\n@Data.Array.Accelerate.CUDA@ it may be on-the-fly off-loaded to the GPU.\n\n[/Available backends/]\n\nCurrently, there are two backends:\n\n1. An interpreter that serves as a reference implementation of the intended\nsemantics of the language, which is included in this package.\n\n2. A CUDA backend generating code for CUDA-capable NVIDIA GPUs:\n<http://hackage.haskell.org/package/accelerate-cuda>\n\nSeveral experimental and/or incomplete backends also exist. If you are\nparticularly interested in any of these, especially with helping to finish\nthem, please contact us.\n\n1. Cilk\\/ICC and OpenCL: <https://github.com/AccelerateHS/accelerate-backend-kit>\n\n2. Another OpenCL backend: <https://github.com/HIPERFIT/accelerate-opencl>\n\n3. A backend to the Repa array library: <https://github.com/blambo/accelerate-repa>\n\n4. An infrastructure for generating LLVM code, with backends targeting\nmulticore CPUs and NVIDIA GPUs: <https://github.com/AccelerateHS/accelerate-llvm/>\n\n[/Additional components/]\n\nThe following support packages are available:\n\n1. @accelerate-cuda@: A high-performance parallel backend targeting\nCUDA-enabled NVIDIA GPUs. Requires the NVIDIA CUDA SDK and, for full\nfunctionality, hardware with compute capability 1.1 or greater. See the\ntable on Wikipedia for supported GPUs:\n<http://en.wikipedia.org/wiki/CUDA#Supported_GPUs>\n\n2. @accelerate-examples@: Computational kernels and applications showcasing\n/Accelerate/, as well as performance and regression tests.\n\n3. @accelerate-io@: Fast conversion between /Accelerate/ arrays and other\nformats, including 'vector' and 'repa'.\n\n4. @accelerate-fft@: Computation of Discrete Fourier Transforms.\n\nInstall them from Hackage with @cabal install PACKAGE@\n\n[/Examples and documentation/]\n\nHaddock documentation is included in the package, and a tutorial is available\non the GitHub wiki: <https://github.com/AccelerateHS/accelerate/wiki>\n\nThe @accelerate-examples@ package demonstrates a range of computational\nkernels and several complete applications, including:\n\n* An implementation of the Canny edge detection algorithm\n\n* An interactive Mandelbrot set generator\n\n* A particle-based simulation of stable fluid flows\n\n* An /n/-body simulation of gravitational attraction between solid particles\n\n* A cellular automata simulation\n\n* A \\\"password recovery\\\" tool, for dictionary lookup of MD5 hashes\n\n* A simple interactive ray tracer\n\n[/Mailing list and contacts/]\n\n* Mailing list: <accelerate-haskell@googlegroups.com> (discussion of both\nuse and development welcome).\n\n* Sign up for the mailing list here:\n<http://groups.google.com/group/accelerate-haskell>\n\n* Bug reports and issue tracking:\n<https://github.com/AccelerateHS/accelerate/issues>\n\n[/Release notes/]\n\n* /0.15.0.0:/ Bug fixes and performance improvements.\n\n* /0.14.0.0:/ New iteration constructs. Additional Prelude-like functions.\nImproved code generation and fusion optimisation. Concurrent kernel\nexecution. Bug fixes.\n\n* /0.13.0.0:/ New array fusion optimisation. New foreign function\ninterface for array and scalar expressions. Additional Prelude-like\nfunctions. New example programs. Bug fixes and performance improvements.\n\n* /0.12.0.0:/ Full sharing recovery in scalar expressions and array\ncomputations. Two new example applications in package\n@accelerate-examples@: Real-time Canny edge detection and fluid flow\nsimulator (both including a graphical frontend). Bug fixes.\n\n* /0.11.0.0:/ New Prelude-like functions @zip*@, @unzip*@,\n@fill@, @enumFrom*@, @tail@, @init@, @drop@, @take@, @slit@, @gather*@,\n@scatter*@, and @shapeSize@. New simplified AST (in package\n@accelerate-backend-kit@) for backend writers who want to avoid the\ncomplexities of the type-safe AST.\n\n* /0.10.0.0:/ Complete sharing recovery for scalar expressions (but\ncurrently disabled by default). Also bug fixes in array sharing recovery\nand a few new convenience functions.\n\n* /0.9.0.0:/ Streaming, precompilation, Repa-style indices,\n@stencil@s, more @scan@s, rank-polymorphic @fold@, @generate@, block I/O &\nmany bug fixes.\n\n* /0.8.1.0:/ Bug fixes and some performance tweaks.\n\n* /0.8.0.0:/ @replicate@, @slice@ and @foldSeg@ supported in the\nCUDA backend; frontend and interpreter support for @stencil@. Bug fixes.\n\n* /0.7.1.0:/ The CUDA backend and a number of scalar functions.\n\n[/Hackage note/]\n\nThe module documentation list generated by Hackage is incorrect. The only\nexposed modules should be:\n\n* \"Data.Array.Accelerate\"\n\n* \"Data.Array.Accelerate.Interpreter\"\n\n* \"Data.Array.Accelerate.Data.Complex\"\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.fclabels)
          (hsPkgs.ghc-prim)
          (hsPkgs.hashable)
          (hsPkgs.hashtables)
          (hsPkgs.pretty)
          (hsPkgs.template-haskell)
        ] ++ pkgs.lib.optionals (flags.more-pp) [
          (hsPkgs.bytestring)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.unix)
        ];
      };
    };
  }