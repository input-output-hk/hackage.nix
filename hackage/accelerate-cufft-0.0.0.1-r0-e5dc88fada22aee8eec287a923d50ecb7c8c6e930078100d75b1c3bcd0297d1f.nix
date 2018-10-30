{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      buildexamples = false;
    };
    package = {
      specVersion = "1.14";
      identifier = {
        name = "accelerate-cufft";
        version = "0.0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://hub.darcs.net/thielema/accelerate-cufft/";
      url = "";
      synopsis = "Accelerate frontend to the CUFFT library (Fourier transform)";
      description = "An interface for the @accelerate@ framework\nto the Fourier Transform library @cufft@\nprovided by Nvidia for their CUDA enabled graphic cards.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.cufft)
          (hsPkgs.cuda)
          (hsPkgs.accelerate-fourier)
          (hsPkgs.accelerate-utility)
          (hsPkgs.accelerate-cuda)
          (hsPkgs.accelerate)
          (hsPkgs.base)
        ];
      };
      exes = {
        "accelerate-cufft-demo" = {
          depends  = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.accelerate-cufft)
            (hsPkgs.accelerate-cuda)
            (hsPkgs.accelerate)
            (hsPkgs.base)
          ];
        };
        "accelerate-cufft-demo-merged" = {
          depends  = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.accelerate-cuda)
            (hsPkgs.accelerate)
            (hsPkgs.cufft)
            (hsPkgs.cuda)
            (hsPkgs.base)
          ];
        };
        "accelerate-cufft-demo-separate" = {
          depends  = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.accelerate-cuda)
            (hsPkgs.accelerate)
            (hsPkgs.cufft)
            (hsPkgs.cuda)
            (hsPkgs.base)
          ];
        };
        "cufft-demo" = {
          depends  = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.cufft)
            (hsPkgs.cuda)
            (hsPkgs.base)
          ];
        };
      };
    };
  }