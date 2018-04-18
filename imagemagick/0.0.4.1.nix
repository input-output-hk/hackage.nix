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
          version = "0.0.4.1";
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
            hsPkgs.filepath
            hsPkgs.MonadCatchIO-transformers
          ];
        };
        exes = {
          resize = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.resourcet
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.filepath
              hsPkgs.imagemagick
            ];
          };
          extent = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.resourcet
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.filepath
              hsPkgs.imagemagick
            ];
          };
          floodfill = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.resourcet
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.filepath
              hsPkgs.imagemagick
            ];
          };
          cyclops = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.resourcet
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.filepath
              hsPkgs.imagemagick
            ];
          };
          clipmask = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.resourcet
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.filepath
              hsPkgs.imagemagick
            ];
          };
          paint-trans = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.resourcet
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.filepath
              hsPkgs.imagemagick
            ];
          };
          round-mask = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.resourcet
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.filepath
              hsPkgs.imagemagick
            ];
          };
          make-tile = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.resourcet
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.filepath
              hsPkgs.imagemagick
            ];
          };
          draw-shapes = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.resourcet
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.filepath
              hsPkgs.imagemagick
            ];
          };
          text-effects = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.resourcet
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.filepath
              hsPkgs.imagemagick
            ];
          };
          gel = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.resourcet
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.filepath
              hsPkgs.lifted-base
              hsPkgs.imagemagick
            ];
          };
          reflect = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.resourcet
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.filepath
              hsPkgs.imagemagick
            ];
          };
          3dlogo = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.resourcet
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.filepath
              hsPkgs.imagemagick
            ];
          };
          affine = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.resourcet
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.filepath
              hsPkgs.imagemagick
            ];
          };
          grayscale = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.resourcet
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.filepath
              hsPkgs.imagemagick
            ];
          };
          modulate = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.resourcet
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.filepath
              hsPkgs.imagemagick
            ];
          };
          landscape3d = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.resourcet
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.filepath
              hsPkgs.imagemagick
            ];
          };
          tilt-shift = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.resourcet
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.filepath
              hsPkgs.imagemagick
            ];
          };
          bunny = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.resourcet
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.filepath
              hsPkgs.imagemagick
            ];
          };
          pixel-mod = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.resourcet
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.filepath
              hsPkgs.imagemagick
            ];
          };
          wandtest = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.resourcet
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.filepath
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
              hsPkgs.filepath
              hsPkgs.imagemagick
              hsPkgs.QuickCheck
              hsPkgs.tasty
              hsPkgs.tasty-hunit
            ];
          };
        };
      };
    }