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
    flags = { cuda = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "accelerate-fft"; version = "0.13.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Manuel M T Chakravarty <chak@cse.unsw.edu.au>";
      author = "Manuel M T Chakravarty,\nGabriele Keller,\nTrevor L. McDonell";
      homepage = "https://github.com/AccelerateHS/accelerate-fft";
      url = "";
      synopsis = "FFT using the Accelerate library";
      description = "Rank-polymorphic discrete Fourier transform (DFT), computed with a fast\nFourier transform (FFT) algorithm using the Accelerate library\n\nRefer to the main /Accelerate/ package for more information:\n<http://hackage.haskell.org/package/accelerate>\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ] ++ pkgs.lib.optionals (flags.cuda) [
          (hsPkgs."accelerate-cuda" or (errorHandler.buildDepError "accelerate-cuda"))
          (hsPkgs."cuda" or (errorHandler.buildDepError "cuda"))
          (hsPkgs."cufft" or (errorHandler.buildDepError "cufft"))
        ];
        buildable = true;
      };
    };
  }