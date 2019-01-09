{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { buildexamples = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "imagemagick"; version = "0.0.3"; };
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
          (hsPkgs.system-filepath)
          (hsPkgs.MonadCatchIO-transformers)
          ];
        pkgconfig = [ (pkgconfPkgs.ImageMagick) (pkgconfPkgs.MagickWand) ];
        build-tools = [ ((hsPkgs.buildPackages).hsc2hs) ];
        };
      exes = {
        "resize" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.system-filepath)
            (hsPkgs.imagemagick)
            ];
          pkgconfig = [ (pkgconfPkgs.ImageMagick) (pkgconfPkgs.MagickWand) ];
          };
        "extent" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.system-filepath)
            (hsPkgs.imagemagick)
            ];
          pkgconfig = [ (pkgconfPkgs.ImageMagick) (pkgconfPkgs.MagickWand) ];
          };
        "floodfill" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.system-filepath)
            (hsPkgs.imagemagick)
            ];
          pkgconfig = [ (pkgconfPkgs.ImageMagick) (pkgconfPkgs.MagickWand) ];
          };
        "cyclops" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.system-filepath)
            (hsPkgs.imagemagick)
            ];
          pkgconfig = [ (pkgconfPkgs.ImageMagick) (pkgconfPkgs.MagickWand) ];
          };
        "clipmask" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.system-filepath)
            (hsPkgs.imagemagick)
            ];
          pkgconfig = [ (pkgconfPkgs.ImageMagick) (pkgconfPkgs.MagickWand) ];
          };
        "paint-trans" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.system-filepath)
            (hsPkgs.imagemagick)
            ];
          pkgconfig = [ (pkgconfPkgs.ImageMagick) (pkgconfPkgs.MagickWand) ];
          };
        "round-mask" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.system-filepath)
            (hsPkgs.imagemagick)
            ];
          pkgconfig = [ (pkgconfPkgs.ImageMagick) (pkgconfPkgs.MagickWand) ];
          };
        "make-tile" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.system-filepath)
            (hsPkgs.imagemagick)
            ];
          pkgconfig = [ (pkgconfPkgs.ImageMagick) (pkgconfPkgs.MagickWand) ];
          };
        "draw-shapes" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.system-filepath)
            (hsPkgs.imagemagick)
            ];
          pkgconfig = [ (pkgconfPkgs.ImageMagick) (pkgconfPkgs.MagickWand) ];
          };
        "text-effects" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.system-filepath)
            (hsPkgs.imagemagick)
            ];
          pkgconfig = [ (pkgconfPkgs.ImageMagick) (pkgconfPkgs.MagickWand) ];
          };
        "gel" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.system-filepath)
            (hsPkgs.lifted-base)
            (hsPkgs.imagemagick)
            ];
          pkgconfig = [ (pkgconfPkgs.ImageMagick) (pkgconfPkgs.MagickWand) ];
          };
        "reflect" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.system-filepath)
            (hsPkgs.imagemagick)
            ];
          pkgconfig = [ (pkgconfPkgs.ImageMagick) (pkgconfPkgs.MagickWand) ];
          };
        "3dlogo" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.system-filepath)
            (hsPkgs.imagemagick)
            ];
          pkgconfig = [ (pkgconfPkgs.ImageMagick) (pkgconfPkgs.MagickWand) ];
          };
        "affine" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.system-filepath)
            (hsPkgs.imagemagick)
            ];
          pkgconfig = [ (pkgconfPkgs.ImageMagick) (pkgconfPkgs.MagickWand) ];
          };
        "grayscale" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.system-filepath)
            (hsPkgs.imagemagick)
            ];
          pkgconfig = [ (pkgconfPkgs.ImageMagick) (pkgconfPkgs.MagickWand) ];
          };
        "modulate" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.system-filepath)
            (hsPkgs.imagemagick)
            ];
          pkgconfig = [ (pkgconfPkgs.ImageMagick) (pkgconfPkgs.MagickWand) ];
          };
        "landscape3d" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.system-filepath)
            (hsPkgs.imagemagick)
            ];
          pkgconfig = [ (pkgconfPkgs.ImageMagick) (pkgconfPkgs.MagickWand) ];
          };
        "tilt-shift" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.system-filepath)
            (hsPkgs.imagemagick)
            ];
          pkgconfig = [ (pkgconfPkgs.ImageMagick) (pkgconfPkgs.MagickWand) ];
          };
        "bunny" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.system-filepath)
            (hsPkgs.imagemagick)
            ];
          pkgconfig = [ (pkgconfPkgs.ImageMagick) (pkgconfPkgs.MagickWand) ];
          };
        "pixel-mod" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.system-filepath)
            (hsPkgs.imagemagick)
            ];
          pkgconfig = [ (pkgconfPkgs.ImageMagick) (pkgconfPkgs.MagickWand) ];
          };
        "wandtest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.system-filepath)
            (hsPkgs.imagemagick)
            ];
          pkgconfig = [ (pkgconfPkgs.ImageMagick) (pkgconfPkgs.MagickWand) ];
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
            (hsPkgs.system-filepath)
            (hsPkgs.imagemagick)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            ];
          pkgconfig = [ (pkgconfPkgs.ImageMagick) (pkgconfPkgs.MagickWand) ];
          };
        };
      };
    }