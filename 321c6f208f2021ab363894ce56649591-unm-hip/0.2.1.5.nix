{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "unm-hip";
        version = "0.2.1.5";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "josephmcollard+unm-hip@gmail.com";
      author = "Joseph Collard, Stephen Patel, Lance Williams";
      homepage = "";
      url = "";
      synopsis = "A Library for the manipulation of images";
      description = "The University of New Mexico's Haskell Image Processing library contains functionality for performing manipulations on binary, grayscale, color, and complex images. The library was designed for use in UNM's Digital Image Processing class but it can be used for a wide range of image processing purposes.\n\n[Changes]\n\n* Fixed a bug in normalize that was producing images with NaN pixel values\n\n* fixed a bug in shrink that was producing an infinite loop. Resulting in the type signature changing\n\n* Updated the convenience `shrink` function in Boxed.hs to explicitly take a double as it is the pixel type required from the input image.";
      buildType = "Simple";
    };
    components = {
      "unm-hip" = {
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