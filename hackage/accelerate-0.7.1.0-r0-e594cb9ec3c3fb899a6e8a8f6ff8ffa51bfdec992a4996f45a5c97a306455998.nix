{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { llvm = false; cuda = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "accelerate"; version = "0.7.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Manuel M T Chakravarty <chak@cse.unsw.edu.au>";
      author = "Manuel M T Chakravarty,\nGabriele Keller,\nSean Lee,\nTrevor L. McDonell";
      homepage = "http://www.cse.unsw.edu.au/~chak/project/accelerate/";
      url = "";
      synopsis = "An embedded language for accelerated array processing";
      description = "This library defines an embedded language for\nregular, multi-dimensional array computations with\nmultiple backends to facilitate high-performance\nimplementations.  Currently, there are two backends:\n(1) an interpreter that serves as a reference\nimplementation of the intended semantics of the\nlanguage and (2) a CUDA backend generating code for\nCUDA-capable NVIDIA GPUs.\n\nTo use the CUDA backend, you need to have CUDA version 3.x\ninstalled.  The CUDA backend still misses some features of\nthe full language; in particular, the array operations\n'replicate', 'slice', and 'foldSeg' are not yet supported.\n\nKnown bugs in this version:    http://trac.haskell.org/accelerate/query?status=new&status=assigned&status=reopened&status=closed&version=0.7.1.0&order=priority\n\n* New in 0.7.1.0: the CUDA backend and a number of scalar functions";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          ] ++ (pkgs.lib).optional (flags.llvm) (hsPkgs."llvm" or (errorHandler.buildDepError "llvm"))) ++ (pkgs.lib).optionals (flags.cuda) [
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cuda" or (errorHandler.buildDepError "cuda"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."language-c" or (errorHandler.buildDepError "language-c"))
          (hsPkgs."monads-fd" or (errorHandler.buildDepError "monads-fd"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
        buildable = true;
        };
      };
    }