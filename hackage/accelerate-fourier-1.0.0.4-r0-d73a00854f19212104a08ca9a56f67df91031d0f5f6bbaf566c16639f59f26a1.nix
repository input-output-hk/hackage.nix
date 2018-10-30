{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = {
        name = "accelerate-fourier";
        version = "1.0.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://hub.darcs.net/thielema/accelerate-fourier/";
      url = "";
      synopsis = "Fast Fourier transform and convolution using the Accelerate framework";
      description = "Fast Fourier transform and convolution via the @accelerate@ package.\nIt uses many of the common tricks to achieve optimal speed\nfor every size of the data set,\nbut it does not contain low-level optimizations.\n\n* For CUDA specific optimizations please see\n@cufft@ and @accelerate-cufft@ and @accelerate-fft@ packages.\n\n* For CPU specific optimizations cf. @accelerate-fftw@ package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.accelerate-arithmetic)
          (hsPkgs.accelerate-utility)
          (hsPkgs.accelerate)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.utility-ht)
          (hsPkgs.QuickCheck)
          (hsPkgs.base)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.accelerate-fourier)
            (hsPkgs.accelerate-arithmetic)
            (hsPkgs.accelerate-utility)
            (hsPkgs.accelerate)
            (hsPkgs.utility-ht)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
          ];
        };
      };
      benchmarks = {
        "benchmark" = {
          depends  = [
            (hsPkgs.criterion)
            (hsPkgs.accelerate-fourier)
            (hsPkgs.accelerate-arithmetic)
            (hsPkgs.accelerate-utility)
            (hsPkgs.accelerate-llvm-native)
            (hsPkgs.accelerate)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
          ];
        };
      };
    };
  }