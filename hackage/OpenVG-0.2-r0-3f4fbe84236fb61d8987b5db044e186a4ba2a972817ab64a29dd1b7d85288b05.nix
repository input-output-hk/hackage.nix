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
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "OpenVG (shivag-0.2.1) binding";
      description = "A Haskell binding for the OpenVG vector graphics API version 1.0.1\nspecifically the shivavg-0.2.1 implementation.\n*** Windows users - use version 1.0 and ShivaVG-0.2.0. ***";
      buildType = "Simple";
    };
    components = {
      "OpenVG" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.OpenGL)
          (hsPkgs.GLUT)
        ];
      };
    };
  }