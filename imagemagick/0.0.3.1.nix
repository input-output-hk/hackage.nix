{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      buildexamples = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "imagemagick";
          version = "0.0.3.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "alexander.vershilov@gmail.com";
        author = "Alexander Vershilov, Kirill Zaborsky";
        homepage = "";
        url = "";
        synopsis = "bindings to imagemagick library";
        description = "Basic image magick bindings.";
        buildType = "Simple";
      };
      components = {
        imagemagick = {
          depends  = [
            hsPkgs.base
            hsPkgs.resourcet
            hsPkgs.transformers
            hsPkgs.vector
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.system-filepath
            hsPkgs.MonadCatchIO-transformers
          ];
        };
        exes = {
          resize = {
            depends  = [
              hsPkgs.base
              hsPkgs.resourcet
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.system-filepath
              hsPkgs.imagemagick
            ];
          };
          extent = {
            depends  = [
              hsPkgs.base
              hsPkgs.resourcet
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.system-filepath
              hsPkgs.imagemagick
            ];
          };
          floodfill = {
            depends  = [
              hsPkgs.base
              hsPkgs.resourcet
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.system-filepath
              hsPkgs.imagemagick
            ];
          };
          cyclops = {
            depends  = [
              hsPkgs.base
              hsPkgs.resourcet
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.system-filepath
              hsPkgs.imagemagick
            ];
          };
          clipmask = {
            depends  = [
              hsPkgs.base
              hsPkgs.resourcet
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.system-filepath
              hsPkgs.imagemagick
            ];
          };
          paint-trans = {
            depends  = [
              hsPkgs.base
              hsPkgs.resourcet
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.system-filepath
              hsPkgs.imagemagick
            ];
          };
          round-mask = {
            depends  = [
              hsPkgs.base
              hsPkgs.resourcet
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.system-filepath
              hsPkgs.imagemagick
            ];
          };
          make-tile = {
            depends  = [
              hsPkgs.base
              hsPkgs.resourcet
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.system-filepath
              hsPkgs.imagemagick
            ];
          };
          draw-shapes = {
            depends  = [
              hsPkgs.base
              hsPkgs.resourcet
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.system-filepath
              hsPkgs.imagemagick
            ];
          };
          text-effects = {
            depends  = [
              hsPkgs.base
              hsPkgs.resourcet
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.system-filepath
              hsPkgs.imagemagick
            ];
          };
          gel = {
            depends  = [
              hsPkgs.base
              hsPkgs.resourcet
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.system-filepath
              hsPkgs.lifted-base
              hsPkgs.imagemagick
            ];
          };
          reflect = {
            depends  = [
              hsPkgs.base
              hsPkgs.resourcet
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.system-filepath
              hsPkgs.imagemagick
            ];
          };
          3dlogo = {
            depends  = [
              hsPkgs.base
              hsPkgs.resourcet
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.system-filepath
              hsPkgs.imagemagick
            ];
          };
          affine = {
            depends  = [
              hsPkgs.base
              hsPkgs.resourcet
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.system-filepath
              hsPkgs.imagemagick
            ];
          };
          grayscale = {
            depends  = [
              hsPkgs.base
              hsPkgs.resourcet
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.system-filepath
              hsPkgs.imagemagick
            ];
          };
          modulate = {
            depends  = [
              hsPkgs.base
              hsPkgs.resourcet
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.system-filepath
              hsPkgs.imagemagick
            ];
          };
          landscape3d = {
            depends  = [
              hsPkgs.base
              hsPkgs.resourcet
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.system-filepath
              hsPkgs.imagemagick
            ];
          };
          tilt-shift = {
            depends  = [
              hsPkgs.base
              hsPkgs.resourcet
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.system-filepath
              hsPkgs.imagemagick
            ];
          };
          bunny = {
            depends  = [
              hsPkgs.base
              hsPkgs.resourcet
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.system-filepath
              hsPkgs.imagemagick
            ];
          };
          pixel-mod = {
            depends  = [
              hsPkgs.base
              hsPkgs.resourcet
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.system-filepath
              hsPkgs.imagemagick
            ];
          };
          wandtest = {
            depends  = [
              hsPkgs.base
              hsPkgs.resourcet
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.system-filepath
              hsPkgs.imagemagick
            ];
          };
        };
        tests = {
          image-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.lifted-base
              hsPkgs.directory
              hsPkgs.resourcet
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.system-filepath
              hsPkgs.imagemagick
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
      };
    }