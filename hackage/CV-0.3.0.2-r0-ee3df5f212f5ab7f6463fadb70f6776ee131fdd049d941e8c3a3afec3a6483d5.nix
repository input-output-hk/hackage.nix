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
        version = "0.3.0.2";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "ville.tirronen@jyu.fi";
      author = "Ville Tirronen";
      homepage = "";
      url = "";
      synopsis = "OpenCV based machine vision library";
      description = "This is a machine vision package that wraps some functionality\nof OpenCV library. This package has been developed for personal use and\nis not meant to be a complete wrapper. It also includes some things not\nin OpenCV.\n\nCurrently this package is quite dirty and requires much work on documentation\nand code clean-up, but is somewhat tested.\n\n(The scarce) Documentation is available at\n<http://users.jyu.fi/~aleator/CV-0.3.0.2/html/index.html>\n\nChangelog.\n0.3.0.2 - Workaround for compiling with OS X 10.6 & fixed errors about M_PI\n";
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