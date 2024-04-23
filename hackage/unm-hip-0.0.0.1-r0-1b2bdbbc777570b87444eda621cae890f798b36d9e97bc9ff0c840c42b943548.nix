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
      identifier = { name = "unm-hip"; version = "0.0.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "josephmcollard+unm-hip@gmail.com";
      author = "Joseph Collard, Stephen Patel, Lance Williams";
      homepage = "";
      url = "";
      synopsis = "A Library for the manipulation of images";
      description = "The University of New Mexico's Haskell Image Processing library contains functionality for performing manipulations on binary, grayscale, color, and complex images. The library was designed for use in UNM's Digital Image Processing class but it can be used for a wide range of image processing purposes.";
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