{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "OpenVG";
        version = "0.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "OpenVG (shivag-0.2.1) binding";
      description = "A Haskell binding for the OpenVG vector graphics API version 1.0.1\nspecifically the ShivaVG-0.2.1 implementation.\n\nThis version (0.3.0) is NOT compatible with the Haskell Platform\n- it uses the split OpenGL packages (RAW, Tensor, etc.).\n\n** NOT CURRENTLY WORKING ON WINDOWS **\n\nChangelog\n0.2.1 to 0.3.0 Changes to use the split OpenGL packages, added type coercions\nin the Size data type (these might not be ideal).\n\n0.2 to 0.2.1 .cabal file upper bounds for OpenGL and GLUT, and\nWindows installation instructions updated.";
      buildType = "Simple";
    };
    components = {
      "OpenVG" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.OpenGL)
          (hsPkgs.GLUT)
          (hsPkgs.OpenGLRaw)
          (hsPkgs.StateVar)
        ];
      };
    };
  }