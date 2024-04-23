{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "unm-hip"; version = "0.0.0.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "josephmcollard+unm-hip@gmail.com";
      author = "Joseph Collard, Stephen Patel, Lance Williams";
      homepage = "";
      url = "";
      synopsis = "A Library for the manipulation of images";
      description = "The University of New Mexico's Haskell Image Processing library contains functionality for performing manipulations on binary, grayscale, color, and complex images. The library was designed for use in UNM's Digital Image Processing class but it can be used for a wide range of image processing purposes.\n\n[Changes]\n\n[unm-hip-0.0.0.2]\n\n* Adjusted the label function to reduce to the lowest label values. This results in \"better\" output for areas, boundingBoxes, and centersOfMass\n\n* Added the Arithmetic module that provides support for arithmetic operations on images using scalar values.\n\n[unm-hip-0.0.0.1]\n\n* Added an error if fft or ifft are used with a non power of 2 image\n\n* Fixed error in equivalence labeling in label\n\n* Made consistent if and only if through out documentation\n\n* Fixed typo in Complex.hs haddock under fft.\n\n[unm-hip-0.0.0.0]\n\n* Initial release containing functionality for Boxed Images";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
        ];
        buildable = true;
      };
    };
  }