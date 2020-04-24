{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      debug = false;
      ekg = false;
      bounds-checks = true;
      unsafe-checks = false;
      internal-checks = false;
      nofib = true;
      };
    package = {
      specVersion = "1.18";
      identifier = { name = "accelerate"; version = "1.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
      author = "Manuel M T Chakravarty,\nRobert Clifton-Everest,\nGabriele Keller,\nBen Lever,\nTrevor L. McDonell,\nRyan Newtown,\nSean Seefried";
      homepage = "https://github.com/AccelerateHS/accelerate/";
      url = "";
      synopsis = "An embedded language for accelerated array processing";
      description = "@Data.Array.Accelerate@ defines an embedded array language for computations\nfor high-performance computing in Haskell. Computations on multi-dimensional,\nregular arrays are expressed in the form of parameterised collective\noperations, such as maps, reductions, and permutations. These computations may\nthen be online compiled and executed on a range of architectures.\n\n[/A simple example/]\n\nAs a simple example, consider the computation of a dot product of two vectors\nof floating point numbers:\n\n> dotp :: Acc (Vector Float) -> Acc (Vector Float) -> Acc (Scalar Float)\n> dotp xs ys = fold (+) 0 (zipWith (*) xs ys)\n\nExcept for the type, this code is almost the same as the corresponding Haskell\ncode on lists of floats. The types indicate that the computation may be\nonline-compiled for performance - for example, using\n@Data.Array.Accelerate.LLVM.PTX@ it may be on-the-fly off-loaded to the GPU.\n\nSee the \"Data.Array.Accelerate\" module for further information.\n\n[/Additional components/]\n\nThe following supported add-ons are available as separate packages. Install\nthem from Hackage with @cabal install \\<package\\>@\n\n* @accelerate-llvm-native@: Backend supporting parallel execution on\nmulticore CPUs.\n\n* @accelerate-llvm-ptx@: Backend supporting parallel execution on\nCUDA-capable NVIDIA GPUs. Requires a GPU with compute capability 2.0 or\ngreater. See the following table for supported GPUs:\n<http://en.wikipedia.org/wiki/CUDA#Supported_GPUs>\n\n* @accelerate-examples@: Computational kernels and applications showcasing\nthe use of Accelerate as well as a regression test suite, supporting\nfunction and performance testing.\n\n* @accelerate-io@: Fast conversions between Accelerate arrays and other\narray formats (including vector and repa).\n\n* @accelerate-fft@: Discrete Fourier transforms, with FFI bindings to\noptimised implementations.\n\n* @accelerate-bignum@: Fixed-width large integer arithmetic.\n\n* @colour-accelerate@: Colour representations in Accelerate (RGB, sRGB, HSV,\nand HSL).\n\n* @gloss-accelerate@: Generate gloss pictures from Accelerate.\n\n* @gloss-raster-accelerate@: Parallel rendering of raster images and\nanimations.\n\n* @lens-accelerate@: Lens operators for Accelerate types.\n\n* @linear-accelerate@: Linear vector spaces in Accelerate.\n\n* @mwc-random-accelerate@: Generate Accelerate arrays filled with high\nquality pseudorandom numbers.\n\n[/Examples and documentation/]\n\nHaddock documentation is included in the package\n\nThe @accelerate-examples@ package demonstrates a range of computational\nkernels and several complete applications, including:\n\n* An implementation of the Canny edge detection algorithm\n\n* An interactive Mandelbrot set generator\n\n* A particle-based simulation of stable fluid flows\n\n* An /n/-body simulation of gravitational attraction between solid particles\n\n* An implementation of the PageRank algorithm\n\n* A simple interactive ray tracer\n\n* A cellular automata simulation\n\n* A \\\"password recovery\\\" tool, for dictionary lookup of MD5 hashes\n\n@lulesh-accelerate@ is an implementation of the Livermore Unstructured\nLagrangian Explicit Shock Hydrodynamics (LULESH) mini-app. LULESH represents a\ntypical hydrodynamics code such as ALE3D, but is highly simplified and\nhard-coded to solve the Sedov blast problem on an unstructured hexahedron\nmesh.\n\n[/Mailing list and contacts/]\n\n* Mailing list: <accelerate-haskell@googlegroups.com> (discussion of both\nuse and development welcome).\n\n* Sign up for the mailing list here:\n<http://groups.google.com/group/accelerate-haskell>\n\n* Bug reports and issue tracking:\n<https://github.com/AccelerateHS/accelerate/issues>\n";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or ((hsPkgs.pkgs-errors).buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or ((hsPkgs.pkgs-errors).buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.cabal-doctest or (pkgs.buildPackages.cabal-doctest or ((hsPkgs.pkgs-errors).buildToolDepError "cabal-doctest")))
        ];
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
          (hsPkgs."ansi-wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "ansi-wl-pprint"))
          (hsPkgs."base-orphans" or ((hsPkgs.pkgs-errors).buildDepError "base-orphans"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."constraints" or ((hsPkgs.pkgs-errors).buildDepError "constraints"))
          (hsPkgs."cryptonite" or ((hsPkgs.pkgs-errors).buildDepError "cryptonite"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."half" or ((hsPkgs.pkgs-errors).buildDepError "half"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."hashtables" or ((hsPkgs.pkgs-errors).buildDepError "hashtables"))
          (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
          (hsPkgs."tasty-expected-failure" or ((hsPkgs.pkgs-errors).buildDepError "tasty-expected-failure"))
          (hsPkgs."tasty-hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hedgehog"))
          (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."terminal-size" or ((hsPkgs.pkgs-errors).buildDepError "terminal-size"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."unique" or ((hsPkgs.pkgs-errors).buildDepError "unique"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ] ++ (pkgs.lib).optionals (flags.ekg) [
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."ekg" or ((hsPkgs.pkgs-errors).buildDepError "ekg"))
          (hsPkgs."ekg-core" or ((hsPkgs.pkgs-errors).buildDepError "ekg-core"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ]) ++ (if system.isWindows
          then [
            (hsPkgs."Win32" or ((hsPkgs.pkgs-errors).buildDepError "Win32"))
            ]
          else [
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.10") (hsPkgs."th-lift-instances" or ((hsPkgs.pkgs-errors).buildDepError "th-lift-instances"));
        buildable = true;
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            ];
          buildable = if compiler.isGhc && (compiler.version).lt "7.10"
            then false
            else true;
          };
        "nofib-interpreter" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
            ];
          buildable = true;
          };
        };
      };
    }