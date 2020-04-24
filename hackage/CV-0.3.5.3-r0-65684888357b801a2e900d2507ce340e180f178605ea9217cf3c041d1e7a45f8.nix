{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { opencv23 = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "CV"; version = "0.3.5.3"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."carray" or ((hsPkgs.pkgs-errors).buildDepError "carray"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."storable-complex" or ((hsPkgs.pkgs-errors).buildDepError "storable-complex"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."bindings-DSL" or ((hsPkgs.pkgs-errors).buildDepError "bindings-DSL"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."lazysmallcheck" or ((hsPkgs.pkgs-errors).buildDepError "lazysmallcheck"))
          (hsPkgs."storable-tuple" or ((hsPkgs.pkgs-errors).buildDepError "storable-tuple"))
          ];
        libs = [
          (pkgs."opencv_calib3d" or ((hsPkgs.pkgs-errors).sysDepError "opencv_calib3d"))
          (pkgs."opencv_contrib" or ((hsPkgs.pkgs-errors).sysDepError "opencv_contrib"))
          (pkgs."opencv_core" or ((hsPkgs.pkgs-errors).sysDepError "opencv_core"))
          (pkgs."opencv_features2d" or ((hsPkgs.pkgs-errors).sysDepError "opencv_features2d"))
          (pkgs."opencv_flann" or ((hsPkgs.pkgs-errors).sysDepError "opencv_flann"))
          (pkgs."opencv_gpu" or ((hsPkgs.pkgs-errors).sysDepError "opencv_gpu"))
          (pkgs."opencv_highgui" or ((hsPkgs.pkgs-errors).sysDepError "opencv_highgui"))
          (pkgs."opencv_imgproc" or ((hsPkgs.pkgs-errors).sysDepError "opencv_imgproc"))
          (pkgs."opencv_legacy" or ((hsPkgs.pkgs-errors).sysDepError "opencv_legacy"))
          (pkgs."opencv_ml" or ((hsPkgs.pkgs-errors).sysDepError "opencv_ml"))
          (pkgs."opencv_objdetect" or ((hsPkgs.pkgs-errors).sysDepError "opencv_objdetect"))
          (pkgs."opencv_video" or ((hsPkgs.pkgs-errors).sysDepError "opencv_video"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or ((hsPkgs.pkgs-errors).buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      };
    }