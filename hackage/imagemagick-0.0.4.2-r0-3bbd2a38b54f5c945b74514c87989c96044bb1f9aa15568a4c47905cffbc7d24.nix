{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { buildexamples = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "imagemagick"; version = "0.0.4.2"; };
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.resourcet)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.filepath)
          ];
        pkgconfig = [ (pkgconfPkgs."ImageMagick") (pkgconfPkgs."MagickWand") ];
        build-tools = [ ((hsPkgs.buildPackages).hsc2hs) ];
        };
      exes = {
        "resize" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs.base)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.filepath)
            (hsPkgs.imagemagick)
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick")
            (pkgconfPkgs."MagickWand")
            ];
          };
        "extent" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs.base)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.filepath)
            (hsPkgs.imagemagick)
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick")
            (pkgconfPkgs."MagickWand")
            ];
          };
        "floodfill" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs.base)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.filepath)
            (hsPkgs.imagemagick)
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick")
            (pkgconfPkgs."MagickWand")
            ];
          };
        "cyclops" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs.base)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.filepath)
            (hsPkgs.imagemagick)
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick")
            (pkgconfPkgs."MagickWand")
            ];
          };
        "clipmask" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs.base)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.filepath)
            (hsPkgs.imagemagick)
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick")
            (pkgconfPkgs."MagickWand")
            ];
          };
        "paint-trans" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs.base)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.filepath)
            (hsPkgs.imagemagick)
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick")
            (pkgconfPkgs."MagickWand")
            ];
          };
        "round-mask" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs.base)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.filepath)
            (hsPkgs.imagemagick)
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick")
            (pkgconfPkgs."MagickWand")
            ];
          };
        "make-tile" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs.base)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.filepath)
            (hsPkgs.imagemagick)
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick")
            (pkgconfPkgs."MagickWand")
            ];
          };
        "draw-shapes" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs.base)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.filepath)
            (hsPkgs.imagemagick)
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick")
            (pkgconfPkgs."MagickWand")
            ];
          };
        "text-effects" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs.base)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.filepath)
            (hsPkgs.imagemagick)
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick")
            (pkgconfPkgs."MagickWand")
            ];
          };
        "gel" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs.base)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.filepath)
            (hsPkgs.lifted-base)
            (hsPkgs.imagemagick)
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick")
            (pkgconfPkgs."MagickWand")
            ];
          };
        "reflect" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs.base)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.filepath)
            (hsPkgs.imagemagick)
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick")
            (pkgconfPkgs."MagickWand")
            ];
          };
        "3dlogo" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs.base)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.filepath)
            (hsPkgs.imagemagick)
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick")
            (pkgconfPkgs."MagickWand")
            ];
          };
        "affine" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs.base)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.filepath)
            (hsPkgs.imagemagick)
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick")
            (pkgconfPkgs."MagickWand")
            ];
          };
        "grayscale" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs.base)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.filepath)
            (hsPkgs.imagemagick)
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick")
            (pkgconfPkgs."MagickWand")
            ];
          };
        "modulate" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs.base)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.filepath)
            (hsPkgs.imagemagick)
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick")
            (pkgconfPkgs."MagickWand")
            ];
          };
        "landscape3d" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs.base)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.filepath)
            (hsPkgs.imagemagick)
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick")
            (pkgconfPkgs."MagickWand")
            ];
          };
        "tilt-shift" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs.base)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.filepath)
            (hsPkgs.imagemagick)
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick")
            (pkgconfPkgs."MagickWand")
            ];
          };
        "bunny" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs.base)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.filepath)
            (hsPkgs.imagemagick)
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick")
            (pkgconfPkgs."MagickWand")
            ];
          };
        "pixel-mod" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs.base)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.filepath)
            (hsPkgs.imagemagick)
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick")
            (pkgconfPkgs."MagickWand")
            ];
          };
        "wandtest" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs.base)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.filepath)
            (hsPkgs.imagemagick)
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick")
            (pkgconfPkgs."MagickWand")
            ];
          };
        };
      tests = {
        "image-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.lifted-base)
            (hsPkgs.directory)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.filepath)
            (hsPkgs.imagemagick)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick")
            (pkgconfPkgs."MagickWand")
            ];
          };
        };
      };
    }