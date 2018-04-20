{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "imagefilters";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "tim.channell@gmail.com";
        author = "Tim Channell";
        homepage = "https://github.com/tchannel/imagefilters";
        url = "";
        synopsis = "Image Filters (contrast, brightness, gaussian blur, etc)";
        description = "This package brings image filters comparable to PHP's imagefilter functions. In the current release,\nthese filters may only be used with the GD Haskell extension library, but in the future it may support\nother image management libraries, such as the new JuicyPixels library.\n\nimagefilters also supplies functionality for creating custom filters by using the 'pixelTransform' function\nfor per-pixel transformations, or the 'convolute' function for the application of convolution matrices";
        buildType = "Simple";
      };
      components = {
        imagefilters = {
          depends  = [
            hsPkgs.base
            hsPkgs.gd
          ];
        };
      };
    }