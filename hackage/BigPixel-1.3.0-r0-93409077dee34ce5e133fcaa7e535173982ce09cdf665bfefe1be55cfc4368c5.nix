let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "BigPixel"; version = "1.3.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013 Manuel M T Chakravarty & Leon A Chakravarty";
      maintainer = "chak@justtesting.org";
      author = "Manuel M T Chakravarty";
      homepage = "https://github.com/mchakravarty/BigPixel";
      url = "";
      synopsis = "Image editor for pixel art";
      description = "BigPixel is an image editor for pixel art. It is aimed at creating graphics assets for retro or\nMinecraft-style 2D games. It supports the creation of pixelated images with 8x8 big pixels in\n256 colours including some with transparency. It is an OpenGL-based cross-platform application.\nBigPixel currently only supports the BMP image format.\n\nAs BigPixel is a plain OpenGL application without platform-specific GUI support, you need to start\nit as a command line program and supply it with the name of a BMP image file as its sole command\nline argument. If the file exists, it will be opened for editing; otherwise, a new file will be\ncreated. All changes made to an image are persistent — i.e., reflected in the on disk image without\nexplicit saving.\n\n> Left mouse button           — draw with current colour\n> Left mouse button + Shift   — erase with transparency\n> Left mouse button + Control — pick colour from image\n> Right mouse button          — erase with transparency\n> 'W', 'S', 'A', 'D'          - enlarge canvas to the top, bottom, left, and right, respectively\n> 'W', 'S', 'A', 'D' + Shift  - shrink canvas from the top, bottom, left, and right, respectively\n\nWARNING: There is currently no undo facility! Make copies of image files if you are unsure whether\nyou like to keep the changes. (However, if you shrink the visible canvas, the removed content can\nbe restored by simply enlarging the canvas again.)";
      buildType = "Simple";
      };
    components = {
      exes = {
        "BigPixel" = {
          depends = [
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bmp" or (buildDepError "bmp"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."gloss" or (buildDepError "gloss"))
            ];
          };
        };
      };
    }