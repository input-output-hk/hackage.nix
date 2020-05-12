{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "SDL-image"; version = "0.6.1"; };
      license = "BSD-3-Clause";
      copyright = "2004-2010, Lemmih";
      maintainer = "Lemmih (lemmih@gmail.com)";
      author = "Lemmih (lemmih@gmail.com)";
      homepage = "";
      url = "";
      synopsis = "Binding to libSDL_image";
      description = "SDL_image is an image file loading library.\nIt loads images as SDL surfaces, and supports the\nfollowing formats: BMP, GIF, JPEG, LBM, PCX, PNG,\nPNM, TGA, TIFF, XCF, XPM, XV.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
          ];
        buildable = true;
        };
      };
    }