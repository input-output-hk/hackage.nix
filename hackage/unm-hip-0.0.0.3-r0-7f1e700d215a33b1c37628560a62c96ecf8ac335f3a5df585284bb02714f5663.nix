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
        name = "unm-hip";
        version = "0.0.0.3";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "josephmcollard+unm-hip@gmail.com";
      author = "Joseph Collard, Stephen Patel, Lance Williams";
      homepage = "";
      url = "";
      synopsis = "A Library for the manipulation of images";
      description = "The University of New Mexico's Haskell Image Processing library contains functionality for performing manipulations on binary, grayscale, color, and complex images. The library was designed for use in UNM's Digital Image Processing class but it can be used for a wide range of image processing purposes.\n\n[Changes]\n\n[unm-hip-0.0.0.3]\n\n* Exported the Data.Image.Arithmetic module";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.vector)
          (hsPkgs.process)
        ];
      };
    };
  }