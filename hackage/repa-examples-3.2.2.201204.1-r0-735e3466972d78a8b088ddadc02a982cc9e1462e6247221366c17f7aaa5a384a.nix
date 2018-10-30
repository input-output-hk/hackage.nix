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
      specVersion = "1.6";
      identifier = {
        name = "repa-examples";
        version = "3.2.2.201204.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@ouroborus.net>";
      author = "The DPH Team";
      homepage = "http://repa.ouroborus.net";
      url = "";
      synopsis = "Examples using the Repa array library.";
      description = "Legacy version for Haskell Platform 2012.04. You will get better\nperformance if you upgrade to the most recent version of GHC.\nExamples using the Repa array library.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "repa-canny" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.repa)
            (hsPkgs.repa-algorithms)
          ];
        };
        "repa-mmult" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.random)
            (hsPkgs.repa)
            (hsPkgs.repa-io)
            (hsPkgs.repa-algorithms)
          ];
        };
        "repa-laplace" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.repa)
            (hsPkgs.repa-io)
            (hsPkgs.template-haskell)
          ];
        };
        "repa-fft2d" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.repa)
            (hsPkgs.repa-algorithms)
            (hsPkgs.repa-io)
          ];
        };
        "repa-fft2d-highpass" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.repa)
            (hsPkgs.repa-algorithms)
            (hsPkgs.repa-io)
          ];
        };
        "repa-fft3d-highpass" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.repa)
            (hsPkgs.repa-algorithms)
          ];
        };
        "repa-blur" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.repa)
            (hsPkgs.repa-algorithms)
          ];
        };
        "repa-sobel" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.repa)
            (hsPkgs.repa-algorithms)
          ];
        };
        "repa-volume" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.repa)
            (hsPkgs.repa-io)
          ];
        };
      };
    };
  }