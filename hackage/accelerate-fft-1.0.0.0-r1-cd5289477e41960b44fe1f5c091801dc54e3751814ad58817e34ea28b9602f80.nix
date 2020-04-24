{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { cuda = false; llvm-ptx = true; llvm-cpu = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "accelerate-fft"; version = "1.0.0.0"; };
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
        depends = (([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ] ++ (pkgs.lib).optionals (flags.cuda) [
          (hsPkgs."accelerate-cuda" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-cuda"))
          (hsPkgs."cuda" or ((hsPkgs.pkgs-errors).buildDepError "cuda"))
          (hsPkgs."cufft" or ((hsPkgs.pkgs-errors).buildDepError "cufft"))
          (hsPkgs."file-embed" or ((hsPkgs.pkgs-errors).buildDepError "file-embed"))
          ]) ++ (pkgs.lib).optionals (flags.llvm-cpu) [
          (hsPkgs."accelerate-llvm" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-llvm"))
          (hsPkgs."accelerate-llvm-native" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-llvm-native"))
          (hsPkgs."carray" or ((hsPkgs.pkgs-errors).buildDepError "carray"))
          (hsPkgs."fft" or ((hsPkgs.pkgs-errors).buildDepError "fft"))
          (hsPkgs."storable-complex" or ((hsPkgs.pkgs-errors).buildDepError "storable-complex"))
          ]) ++ (pkgs.lib).optionals (flags.llvm-ptx) [
          (hsPkgs."accelerate-llvm" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-llvm"))
          (hsPkgs."accelerate-llvm-ptx" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-llvm-ptx"))
          (hsPkgs."cuda" or ((hsPkgs.pkgs-errors).buildDepError "cuda"))
          (hsPkgs."cufft" or ((hsPkgs.pkgs-errors).buildDepError "cufft"))
          (hsPkgs."file-embed" or ((hsPkgs.pkgs-errors).buildDepError "file-embed"))
          ];
        buildable = true;
        };
      };
    }