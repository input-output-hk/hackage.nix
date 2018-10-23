{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "SDL-image";
        version = "0.6.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "2004-2010, Lemmih";
      maintainer = "Francesco Ariis <fa-ml@ariis.it>";
      author = "Lemmih (lemmih@gmail.com)";
      homepage = "";
      url = "";
      synopsis = "Binding to libSDL_image";
      description = "SDL_image is an image file loading library.\nIt loads images as SDL surfaces, and supports the\nfollowing formats: BMP, GIF, JPEG, LBM, PCX, PNG,\nPNM, TGA, TIFF, XCF, XPM, XV.";
      buildType = "Custom";
    };
    components = {
      "SDL-image" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.SDL)
        ];
      };
    };
  }