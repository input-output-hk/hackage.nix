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
    flags = { llvm-ptx = true; llvm-cpu = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "accelerate-fft"; version = "1.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
      author = "Manuel M T Chakravarty,\nGabriele Keller,\nTrevor L. McDonell,\nRobert Clifton-Everest";
      homepage = "https://github.com/AccelerateHS/accelerate-fft";
      url = "";
      synopsis = "FFT using the Accelerate library";
      description = "Rank-polymorphic discrete Fourier transform (DFT), computed with a fast\nFourier transform (FFT) algorithm using the Accelerate library. Note that\noptimised implementations are available via foreign libraries, but must be\nexplicitly enabled.\n\nRefer to the main /Accelerate/ package for more information:\n<http://hackage.haskell.org/package/accelerate>\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ] ++ (pkgs.lib).optionals (flags.llvm-cpu) [
          (hsPkgs."accelerate-llvm" or (errorHandler.buildDepError "accelerate-llvm"))
          (hsPkgs."accelerate-llvm-native" or (errorHandler.buildDepError "accelerate-llvm-native"))
          (hsPkgs."carray" or (errorHandler.buildDepError "carray"))
          (hsPkgs."fft" or (errorHandler.buildDepError "fft"))
          (hsPkgs."storable-complex" or (errorHandler.buildDepError "storable-complex"))
          ]) ++ (pkgs.lib).optionals (flags.llvm-ptx) [
          (hsPkgs."accelerate-llvm" or (errorHandler.buildDepError "accelerate-llvm"))
          (hsPkgs."accelerate-llvm-ptx" or (errorHandler.buildDepError "accelerate-llvm-ptx"))
          (hsPkgs."cuda" or (errorHandler.buildDepError "cuda"))
          (hsPkgs."cufft" or (errorHandler.buildDepError "cufft"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          ];
        buildable = true;
        };
      };
    }