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
      llvm = false;
      more-pp = false;
      bounds-checks = true;
      unsafe-checks = false;
      internal-checks = false;
      };
    package = {
      specVersion = "1.6";
      identifier = { name = "accelerate"; version = "0.12.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Manuel M T Chakravarty <chak@cse.unsw.edu.au>";
      author = "Manuel M T Chakravarty,\nGabriele Keller,\nSean Lee,\nBen Lever,\nTrevor L. McDonell,\nRyan Newtown,\nSean Seefried";
      homepage = "https://github.com/AccelerateHS/accelerate/";
      url = "";
      synopsis = "An embedded language for accelerated array processing";
      description = "This library defines an embedded language for\nregular, multi-dimensional array computations with\nmultiple backends to facilitate high-performance\nimplementations.  Currently, there are two backends:\n(1) an interpreter that serves as a reference\nimplementation of the intended semantics of the\nlanguage and (2) a CUDA backend generating code for\nCUDA-capable NVIDIA GPUs.\n\nTo use the CUDA backend, you need to have CUDA version 3.x\ninstalled.  The CUDA backend currently doesn't support 'Char'\nand 'Bool' arrays.\n\nAn experimental OpenCL backend is available at <https://github.com/HIPERFIT/accelerate-opencl>\nand an experimental multicore CPU backend building on the Repa array library\nis available at <https://github.com/blambo/accelerate-repa>.\n\nKnown bugs: <https://github.com/AccelerateHS/accelerate/issues>\n\n* New in 0.12.0.0: Full sharing recovery in scalar expressions and array\ncomputations. Two new example applications in package accelerate-examples:\nReal-time Canny edge detection and fluid flow simulator (both including a\ngraphical frontend). Bug fixes.\n\n* New in 0.11.0.0: New functions zip3, zip4, unzip3, unzip4, fill,\nenumFromN, enumFromStepN, tail, init, drop, take, slit, gather,\ngatherIf, scatter, scatterIf, and shapeSize.  New simplified AST\n(in package accelerate-backend-kit) for backend writers who want to\navoid the complexities of the type-safe AST.\n* New in 0.10.0.0: Complete sharing recovery for scalar expressions (but\ncurrently disabled by default). Also bug fixes in array sharing recovery\nand a few new convenience functions.\n\n* New in 0.9.0.0: Streaming, precompilation, Repa-style indices, stencils,\nmore scans, rank-polymorphic fold, generate, block I/O & many bug fixes\n\n* New in 0.8.1.0: Bug fixes and some performance tweaks\n\n* New in 0.8.0.0: 'replicate', 'slice' and 'foldSeg' supported in the\nCUDA backend; frontend and interpreter support for 'stencil'; bug fixes\n\n* New in 0.7.1.0: the CUDA backend and a number of scalar functions\n\nFor documentation, see the homepage and <https://github.com/AccelerateHS/accelerate/wiki>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          ] ++ (pkgs.lib).optionals (flags.more-pp) [
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
          (hsPkgs."text" or (buildDepError "text"))
          ];
        };
      };
    }