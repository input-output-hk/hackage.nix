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
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "CV"; version = "0.3"; };
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
          (hsPkgs."haskell98" or (buildDepError "haskell98"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."parallel" or (buildDepError "parallel"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."carray" or (buildDepError "carray"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."JYU-Utils" or (buildDepError "JYU-Utils"))
          (hsPkgs."storable-complex" or (buildDepError "storable-complex"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          ];
        libs = [
          (pkgs."opencv_calib3d" or (sysDepError "opencv_calib3d"))
          (pkgs."opencv_contrib" or (sysDepError "opencv_contrib"))
          (pkgs."opencv_core" or (sysDepError "opencv_core"))
          (pkgs."opencv_features2d" or (sysDepError "opencv_features2d"))
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
        };
      };
    }