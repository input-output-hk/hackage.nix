{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { llvm-ptx = true; llvm-cpu = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "accelerate-fft"; version = "1.2.0.0"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."lens-accelerate" or ((hsPkgs.pkgs-errors).buildDepError "lens-accelerate"))
          ] ++ (pkgs.lib).optionals (flags.llvm-cpu) [
          (hsPkgs."accelerate-llvm" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-llvm"))
          (hsPkgs."accelerate-llvm-native" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-llvm-native"))
          (hsPkgs."carray" or ((hsPkgs.pkgs-errors).buildDepError "carray"))
          (hsPkgs."fft" or ((hsPkgs.pkgs-errors).buildDepError "fft"))
          ]) ++ (pkgs.lib).optionals (flags.llvm-ptx) [
          (hsPkgs."accelerate-llvm" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-llvm"))
          (hsPkgs."accelerate-llvm-ptx" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-llvm-ptx"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."cuda" or ((hsPkgs.pkgs-errors).buildDepError "cuda"))
          (hsPkgs."cufft" or ((hsPkgs.pkgs-errors).buildDepError "cufft"))
          (hsPkgs."file-embed" or ((hsPkgs.pkgs-errors).buildDepError "file-embed"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      tests = {
        "test-llvm-native" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
            (hsPkgs."accelerate-fft" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-fft"))
            (hsPkgs."accelerate-llvm-native" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-llvm-native"))
            (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hedgehog"))
            ];
          buildable = if !flags.llvm-cpu then false else true;
          };
        "test-llvm-ptx" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
            (hsPkgs."accelerate-fft" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-fft"))
            (hsPkgs."accelerate-llvm-ptx" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-llvm-ptx"))
            (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hedgehog"))
            ];
          buildable = if !flags.llvm-ptx then false else true;
          };
        };
      };
    }