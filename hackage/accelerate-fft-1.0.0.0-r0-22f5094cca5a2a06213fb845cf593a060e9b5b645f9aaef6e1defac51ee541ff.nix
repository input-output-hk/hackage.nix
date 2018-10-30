{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      cuda = false;
      llvm-ptx = false;
      llvm-cpu = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "accelerate-fft";
        version = "1.0.0.0";
      };
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
        depends  = (([
          (hsPkgs.base)
          (hsPkgs.accelerate)
          (hsPkgs.bytestring)
        ] ++ pkgs.lib.optionals (flags.cuda) [
          (hsPkgs.accelerate-cuda)
          (hsPkgs.cuda)
          (hsPkgs.cufft)
          (hsPkgs.file-embed)
        ]) ++ pkgs.lib.optionals (flags.llvm-cpu) [
          (hsPkgs.accelerate-llvm)
          (hsPkgs.accelerate-llvm-native)
          (hsPkgs.carray)
          (hsPkgs.fft)
          (hsPkgs.storable-complex)
        ]) ++ pkgs.lib.optionals (flags.llvm-ptx) [
          (hsPkgs.accelerate-llvm)
          (hsPkgs.accelerate-llvm-ptx)
          (hsPkgs.cuda)
          (hsPkgs.cufft)
          (hsPkgs.file-embed)
        ];
      };
    };
  }