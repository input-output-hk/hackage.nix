{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      examples = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "friday";
          version = "0.1.4";
        };
        license = "LGPL-3.0-only";
        copyright = "";
        maintainer = "Raphael Javaux <raphaeljavaux[at]gmail.com>";
        author = "Raphael Javaux <raphaeljavaux[at]gmail.com>";
        homepage = "https://github.com/RaphaelJ/friday";
        url = "";
        synopsis = "A functionnal image processing library for Haskell.";
        description = "Friday provides functions to manipulate images in a\nfunctional way.\nThe library is designed to be fast, generic and\ntype-safe.\n\nThe library uses FFI calls to the DevIL image library to\nread images from a wide variety of formats, including\nBMP, JPG, PNG, GIF, ICO and PSD. Except for I/Os, friday\nis entirely written in Haskell.\n\nImages can be represented in two representations:\n\n* the 'Manifest' representation stores images in Haskell\n'Vector's ;\n\n* the 'Delayed' representation uses functions to produce\nimages pixels. These images can be combined to produce\ncomplex transformations. By some inlining, Haskell\ncompilers are able to produce fast algorithms by\nremoving intermediate structures.\n\nThe library currently support four color spaces: RGB,\nRGBA, HSV and gray-scale images.\n\nPlease read our\n<https://github.com/RaphaelJ/friday/blob/master/README.md README>\nto get a detailed usage and some examples.";
        buildType = "Simple";
      };
      components = {
        "friday" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.convertible
            hsPkgs.primitive
            hsPkgs.ratio-int
            hsPkgs.vector
            hsPkgs.transformers
          ];
          libs = [ pkgs.IL ];
          build-tools = [
            hsPkgs.buildPackages.hsc2hs
          ];
        };
        exes = {
          "delayed" = {
            depends  = [
              hsPkgs.base
              hsPkgs.friday
            ];
          };
          "canny" = {
            depends  = [
              hsPkgs.base
              hsPkgs.friday
            ];
          };
          "gaussian_blur" = {
            depends  = [
              hsPkgs.base
              hsPkgs.friday
            ];
          };
          "histogram" = {
            depends  = [
              hsPkgs.base
              hsPkgs.friday
            ];
          };
          "resize_image" = {
            depends  = [
              hsPkgs.base
              hsPkgs.friday
            ];
          };
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.friday
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.vector
            ];
          };
        };
        benchmarks = {
          "benchmark" = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.friday
            ];
          };
        };
      };
    }