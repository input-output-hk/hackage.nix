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
      specVersion = "1.12";
      identifier = { name = "ihaskell-juicypixels"; version = "0.3.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "rsx@bluewin.ch";
      author = "Roland Senn";
      homepage = "http://www.github.com/gibiansky/ihaskell";
      url = "";
      synopsis = "IHaskell - IHaskellDisplay instances of the image types of the JuicyPixels package.";
      description = "IHaskellDisplay instances of the image types of the JuicyPixels package. They are displayed as .JPG images.\nDynamicImages and Images of types PixelRGBA16, PixelRGBA8, PixelRGB16, PixelRGB8,\nPixelYA16, PixelYA8, Pixel16, Pixel8, PixelCMYK16, PixelCMYK8, PixelF, Pixel32\nare supported.\nThe module IHaskell.Juicypixels re-exports the modules IHaskell.Display and Codec.Picture.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          (hsPkgs."ihaskell" or (errorHandler.buildDepError "ihaskell"))
        ];
        buildable = true;
      };
    };
  }