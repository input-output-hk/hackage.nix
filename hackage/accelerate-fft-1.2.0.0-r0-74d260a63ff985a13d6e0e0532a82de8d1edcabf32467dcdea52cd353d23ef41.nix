{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      llvm-ptx = true;
      llvm-cpu = true;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "accelerate-fft";
        version = "1.2.0.0";
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
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.accelerate)
          (hsPkgs.bytestring)
          (hsPkgs.lens-accelerate)
        ] ++ pkgs.lib.optionals (flags.llvm-cpu) [
          (hsPkgs.accelerate-llvm)
          (hsPkgs.accelerate-llvm-native)
          (hsPkgs.carray)
          (hsPkgs.fft)
        ]) ++ pkgs.lib.optionals (flags.llvm-ptx) [
          (hsPkgs.accelerate-llvm)
          (hsPkgs.accelerate-llvm-ptx)
          (hsPkgs.containers)
          (hsPkgs.hashable)
          (hsPkgs.unordered-containers)
          (hsPkgs.cuda)
          (hsPkgs.cufft)
          (hsPkgs.file-embed)
          (hsPkgs.mtl)
        ];
      };
      tests = {
        "test-llvm-native" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.accelerate)
            (hsPkgs.accelerate-fft)
            (hsPkgs.accelerate-llvm-native)
            (hsPkgs.hedgehog)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hedgehog)
          ];
        };
        "test-llvm-ptx" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.accelerate)
            (hsPkgs.accelerate-fft)
            (hsPkgs.accelerate-llvm-ptx)
            (hsPkgs.hedgehog)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hedgehog)
          ];
        };
      };
    };
  }