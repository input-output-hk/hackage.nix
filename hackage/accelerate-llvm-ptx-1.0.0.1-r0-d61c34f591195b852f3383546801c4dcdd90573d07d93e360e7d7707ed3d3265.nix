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
    flags = {
      nvvm = false;
      debug = false;
      bounds-checks = true;
      unsafe-checks = false;
      internal-checks = false;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "accelerate-llvm-ptx"; version = "1.0.0.1"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
          (hsPkgs."accelerate-llvm" or (errorHandler.buildDepError "accelerate-llvm"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cuda" or (errorHandler.buildDepError "cuda"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."llvm-hs" or (errorHandler.buildDepError "llvm-hs"))
          (hsPkgs."llvm-hs-pure" or (errorHandler.buildDepError "llvm-hs-pure"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ] ++ (pkgs.lib).optional (flags.nvvm) (hsPkgs."nvvm" or (errorHandler.buildDepError "nvvm"));
        buildable = true;
        };
      };
    }