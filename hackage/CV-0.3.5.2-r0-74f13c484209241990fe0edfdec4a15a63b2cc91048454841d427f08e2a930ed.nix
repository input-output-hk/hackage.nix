{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { opencv23 = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "CV";
        version = "0.3.5.2";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "ville.tirronen@jyu.fi";
      author = "Ville Tirronen";
      homepage = "http://aleator.github.com/CV/";
      url = "";
      synopsis = "OpenCV based machine vision library";
      description = "This is a machine vision package that wraps some functionality\nof OpenCV library. This package has been developed for personal use and\nis not meant to be a complete wrapper. It also includes some things not\nin OpenCV.\n\nCurrently this package is quite dirty and requires much work on documentation\nand code clean-up, but is somewhat tested.\n\n(The scarce) Documentation is available at\n<http://aleator.github.com/CV/>\n\nChangelog.\n0.3.5 - Many new wrappers, clean ups and other fixes.\n\n0.3.4 - Pixelwise operations, bug fixes and additional documentation\n\n0.3.3.0 - Improvements, including compatablity with opencv 2.3.1 and removal of\ndependency with deprecated JYU.Utils\n\nChangelog.\n0.3.2.0 - Improvements, including fancier pixel-wise manipulations\n\nChangelog.\n0.3.0.2 - Workaround for compiling with OS X 10.6 & fixed errors about M_PI\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.parallel)
          (hsPkgs.unix)
          (hsPkgs.array)
          (hsPkgs.mtl)
          (hsPkgs.random)
          (hsPkgs.carray)
          (hsPkgs.QuickCheck)
          (hsPkgs.containers)
          (hsPkgs.storable-complex)
          (hsPkgs.binary)
          (hsPkgs.deepseq)
          (hsPkgs.bindings-DSL)
          (hsPkgs.vector)
          (hsPkgs.lazysmallcheck)
          (hsPkgs.storable-tuple)
        ];
        libs = [
          (pkgs."opencv_calib3d")
          (pkgs."opencv_contrib")
          (pkgs."opencv_core")
          (pkgs."opencv_features2d")
          (pkgs."opencv_flann")
          (pkgs."opencv_gpu")
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