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
      debug = false;
      bounds-checks = true;
      unsafe-checks = false;
      internal-checks = false;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "accelerate-cuda"; version = "0.16.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
      author = "Manuel M T Chakravarty,\nRobert Clifton-Everest,\nGabriele Keller,\nSean Lee,\nTrevor L. McDonell";
      homepage = "https://github.com/AccelerateHS/accelerate-cuda/";
      url = "";
      synopsis = "Accelerate backend for NVIDIA GPUs";
      description = "This library implements a backend for the /Accelerate/ language instrumented\nfor parallel execution on CUDA-capable NVIDIA GPUs. For further information,\nrefer to the main /Accelerate/ package:\n<http://hackage.haskell.org/package/accelerate>\n\nTo use this backend you will need:\n\n1. A CUDA-enabled NVIDIA GPU with, for full functionality, compute\ncapability 1.3 or greater. See the table on Wikipedia for supported GPUs:\n<http://en.wikipedia.org/wiki/CUDA#Supported_GPUs>\n\n2. The CUDA SDK, available from the NVIDIA Developer Zone:\n<http://developer.nvidia.com/cuda-downloads>\n\nSee the Haddock documentation for additional information related to using this\nbackend.\n\nCompile modules that use the CUDA backend with the @-threaded@ flag.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
          (hsPkgs."cuda" or (errorHandler.buildDepError "cuda"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."hashtables" or (errorHandler.buildDepError "hashtables"))
          (hsPkgs."language-c-quote" or (errorHandler.buildDepError "language-c-quote"))
          (hsPkgs."mainland-pretty" or (errorHandler.buildDepError "mainland-pretty"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."SafeSemaphore" or (errorHandler.buildDepError "SafeSemaphore"))
          (hsPkgs."srcloc" or (errorHandler.buildDepError "srcloc"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ] ++ (if system.isWindows
          then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
          else [ (hsPkgs."unix" or (errorHandler.buildDepError "unix")) ]);
        buildable = true;
        };
      };
    }