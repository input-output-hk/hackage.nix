{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "unm-hip";
          version = "0.0.0.0";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "jcollard@unm.edu";
        author = "Joseph Collard, Stephen Patel, Lance Williams";
        homepage = "";
        url = "";
        synopsis = "A Library for the manipulation of images";
        description = "The University of New Mexico's Haskell Image Processing library contains functionality for performing manipulations on binary, grayscale, color, and complex images. The library was designed for use in UNM's Digital Image Processing class but it can be used for a wide range of image processing purposes.";
        buildType = "Simple";
      };
      components = {
        unm-hip = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.vector
            hsPkgs.process
          ];
        };
      };
    }