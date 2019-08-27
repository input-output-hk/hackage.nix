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
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.cabal-doctest or (pkgs.buildPackages.cabal-doctest or (buildToolDepError "cabal-doctest")))
        ];
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
          (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
          (hsPkgs."base-orphans" or (buildDepError "base-orphans"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."constraints" or (buildDepError "constraints"))
          (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."half" or (buildDepError "half"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."hashtables" or (buildDepError "hashtables"))
          (hsPkgs."hedgehog" or (buildDepError "hedgehog"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."tasty" or (buildDepError "tasty"))
          (hsPkgs."tasty-expected-failure" or (buildDepError "tasty-expected-failure"))
          (hsPkgs."tasty-hedgehog" or (buildDepError "tasty-hedgehog"))
          (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."terminal-size" or (buildDepError "terminal-size"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."unique" or (buildDepError "unique"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ] ++ (pkgs.lib).optionals (flags.ekg) [
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."ekg" or (buildDepError "ekg"))
          (hsPkgs."ekg-core" or (buildDepError "ekg-core"))
          (hsPkgs."text" or (buildDepError "text"))
          ]) ++ (if system.isWindows
          then [ (hsPkgs."Win32" or (buildDepError "Win32")) ]
          else [
            (hsPkgs."unix" or (buildDepError "unix"))
            ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.10") (hsPkgs."th-lift-instances" or (buildDepError "th-lift-instances"));
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."accelerate" or (buildDepError "accelerate"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            ];
          };
        "nofib-interpreter" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."accelerate" or (buildDepError "accelerate"))
            ];
          };
        };
      };
    }