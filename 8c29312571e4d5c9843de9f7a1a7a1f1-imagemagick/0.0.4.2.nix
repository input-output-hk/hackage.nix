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
          version = "0.0.4.2";
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
          ];
        };
        exes = {
          resize = {
            depends  = pkgs.lib.optionals _flags.buildexamples [
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
            depends  = pkgs.lib.optionals _flags.buildexamples [
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
            depends  = pkgs.lib.optionals _flags.buildexamples [
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
            depends  = pkgs.lib.optionals _flags.buildexamples [
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
            depends  = pkgs.lib.optionals _flags.buildexamples [
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
            depends  = pkgs.lib.optionals _flags.buildexamples [
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
            depends  = pkgs.lib.optionals _flags.buildexamples [
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
            depends  = pkgs.lib.optionals _flags.buildexamples [
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
            depends  = pkgs.lib.optionals _flags.buildexamples [
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
            depends  = pkgs.lib.optionals _flags.buildexamples [
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
            depends  = pkgs.lib.optionals _flags.buildexamples [
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
            depends  = pkgs.lib.optionals _flags.buildexamples [
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
            depends  = pkgs.lib.optionals _flags.buildexamples [
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
            depends  = pkgs.lib.optionals _flags.buildexamples [
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
            depends  = pkgs.lib.optionals _flags.buildexamples [
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
            depends  = pkgs.lib.optionals _flags.buildexamples [
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
            depends  = pkgs.lib.optionals _flags.buildexamples [
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
            depends  = pkgs.lib.optionals _flags.buildexamples [
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
            depends  = pkgs.lib.optionals _flags.buildexamples [
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
            depends  = pkgs.lib.optionals _flags.buildexamples [
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
            depends  = pkgs.lib.optionals _flags.buildexamples [
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