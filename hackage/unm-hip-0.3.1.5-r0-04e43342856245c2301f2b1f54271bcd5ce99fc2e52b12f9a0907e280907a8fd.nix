{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "unm-hip"; version = "0.3.1.5"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "josephmcollard+unm-hip@gmail.com";
      author = "Joseph Collard, Stephen Patel, Lance Williams";
      homepage = "";
      url = "";
      synopsis = "A Library for the manipulation of images";
      description = "The University of New Mexico's Haskell Image Processing library contains functionality for performing manipulations on binary, grayscale, color, and complex images. The library was designed for use in UNM's Digital Image Processing class but it can be used for a wide range of image processing purposes.\n\n[Changes]\n\n* Modified shrink such that it now will work with Images that have a ComplexPixel type and return the same type of image. This seems more intuitive and allow users to use it with GrayImages and get GrayImages back. If the user want to use it specifically with Complex values, they will already have a ComplexImage and thus it is a non issue and the type does not need to be coerced.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          ];
        buildable = true;
        };
      };
    }