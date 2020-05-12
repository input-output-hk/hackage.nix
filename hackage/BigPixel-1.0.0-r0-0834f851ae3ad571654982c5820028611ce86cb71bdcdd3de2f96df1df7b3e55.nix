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
      identifier = { name = "BigPixel"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013 Manuel M T Chakravarty & Leon A Chakravarty";
      maintainer = "chak@justtesting.org";
      author = "Manuel M T Chakravarty";
      homepage = "https://github.com/mchakravarty/BigPixel";
      url = "";
      synopsis = "Image editor for pixel art";
      description = "BigPixel is an image editor for pixel art. It is aimed at creating graphics assets for retro or\nMinecraft-style 2D games. It supports the creation of pixelated images with 8x8 big pixels in\n256 colours with 16 levels of transparency. It is an OpenGL-based cross-platform application.\nBigPixel currently only supports the BMP image format.\nAs BigPixel is a plain OpenGL application without platform-specific GUI support, you need to start\nit as a command line program and supply it with the name of a BMP image file as its sole command\nline argument. If the file exists, it will be opened for editing; otherwise, a new file will be\ncreated. All changes made to an image are persistent — i.e., reflected in the on disk image without\nexplicit saving.\n> Left mouse button          — draw with current colour\n> Left mouse button + Shift  — erase with transparency\n> Right mouse button         — erase with transparency\n> 'W', 'S', 'A', 'D'         - enlarge canvas to the top, bottom, left, and right, respectively\n> 'W', 'S', 'A', 'D' + Shift - shrink canvas from the top, bottom, left, and right, respectively\nWARNING: There is currently no undo facility! Make copies of image files if you are unsure whether\nyou like to keep the changes. (However, if you shrink the visible canvas, the removed content can\nbe restored by simply enlarging the canvas again.)";
      buildType = "Simple";
      };
    components = {
      exes = {
        "BigPixel" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bmp" or (errorHandler.buildDepError "bmp"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
            ];
          buildable = true;
          };
        };
      };
    }