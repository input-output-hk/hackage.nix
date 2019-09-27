let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."parallel" or (buildDepError "parallel"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."carray" or (buildDepError "carray"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."storable-complex" or (buildDepError "storable-complex"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."bindings-DSL" or (buildDepError "bindings-DSL"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."lazysmallcheck" or (buildDepError "lazysmallcheck"))
          (hsPkgs."storable-tuple" or (buildDepError "storable-tuple"))
          ];
        libs = [
          (pkgs."opencv_calib3d" or (sysDepError "opencv_calib3d"))
          (pkgs."opencv_contrib" or (sysDepError "opencv_contrib"))
          (pkgs."opencv_core" or (sysDepError "opencv_core"))
          (pkgs."opencv_features2d" or (sysDepError "opencv_features2d"))
          (pkgs."opencv_flann" or (sysDepError "opencv_flann"))
          (pkgs."opencv_gpu" or (sysDepError "opencv_gpu"))
          (pkgs."opencv_highgui" or (sysDepError "opencv_highgui"))
          (pkgs."opencv_imgproc" or (sysDepError "opencv_imgproc"))
          (pkgs."opencv_legacy" or (sysDepError "opencv_legacy"))
          (pkgs."opencv_ml" or (sysDepError "opencv_ml"))
          (pkgs."opencv_objdetect" or (sysDepError "opencv_objdetect"))
          (pkgs."opencv_video" or (sysDepError "opencv_video"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      };
    }