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
        name = "CV";
        version = "0.3.0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "ville.tirronen@jyu.fi";
      author = "Ville Tirronen";
      homepage = "";
      url = "";
      synopsis = "OpenCV based machine vision library";
      description = "This is a machine vision package that wraps some functionality\nof OpenCV library. This package has been developed for personal use and\nis not meant to be a complete wrapper, though it will most likely grow to\ncover most of functionaly exposed by OpenCV C interface.\nCurrently this package is quite dirty and requires much work on documentation\nand code clean-up, but is somewhat tested.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.haskell98)
          (hsPkgs.base)
          (hsPkgs.parallel)
          (hsPkgs.unix)
          (hsPkgs.array)
          (hsPkgs.mtl)
          (hsPkgs.random)
          (hsPkgs.carray)
          (hsPkgs.QuickCheck)
          (hsPkgs.containers)
          (hsPkgs.JYU-Utils)
          (hsPkgs.storable-complex)
          (hsPkgs.binary)
          (hsPkgs.deepseq)
        ];
        libs = [
          (pkgs."opencv_calib3d")
          (pkgs."opencv_contrib")
          (pkgs."opencv_core")
          (pkgs."opencv_features2d")
          (pkgs."opencv_highgui")
          (pkgs."opencv_imgproc")
          (pkgs."opencv_legacy")
          (pkgs."opencv_ml")
          (pkgs."opencv_objdetect")
          (pkgs."opencv_video")
        ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
        ];
      };
    };
  }