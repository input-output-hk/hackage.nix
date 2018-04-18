{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "curves";
          version = "1.1.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "ulf.norell@gmail.com";
        author = "Ulf Norell";
        homepage = "";
        url = "";
        synopsis = "Library for drawing curve based images.";
        description = "Curves is an easy to use library for creating images. The\nbasic primitive is a curve, which, in the simplest case, is\na continuous function from a scalar parameter to a\n2-dimensional point on the curve. Images are rendered as\nPNG images.";
        buildType = "Simple";
      };
      components = {
        curves = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.QuickCheck
            hsPkgs.HaXml
            hsPkgs.containers
            hsPkgs.filepath
            hsPkgs.JuicyPixels
          ];
        };
      };
    }