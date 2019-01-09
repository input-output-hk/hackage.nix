{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "OpenVG"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "OpenVG (shivag-0.2.1) binding";
      description = "A Haskell binding for the OpenVG vector graphics API version 1.0.1\nspecifically the ShivaVG-0.2.1 implementation.\n\nThis version (0.2.1) is compatible with the Haskell Platform\n(2009.2.0.2) and works on Windows with MinGW/msys.\n\nChangelog\n0.2 to 0.2.1 .cabal file upper bounds for OpenGL and GLUT, and\nWindows installation instructions updated.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.OpenGL) (hsPkgs.GLUT) ];
        };
      };
    }