{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "opengl-spacenavigator"; version = "0.1.5.2"; };
      license = "MIT";
      copyright = "(c) 2015 Brian W Bush";
      maintainer = "Brian W Bush <consult@brianwbush.info>";
      author = "Brian W Bush <consult@brianwbush.info>";
      homepage = "https://bitbucket.org/bwbush/opengl-spacenavigator";
      url = "https://bitbucket.org/bwbush/opengl-spacenavigator/downloads/opengl-spacenavigator-0.1.4.2.tar.gz";
      synopsis = "Library and example for using a SpaceNavigator-compatible 3-D mouse with OpenGL";
      description = "This package contains functions for managing input from a SpaceNavigator \\<<http://www.3dconnexion.com/products/spacemouse/spacenavigator.html>\\>, or a 3D mouse compatible with its protocols.  OpenGL callbacks are provided, along with utilities for quantizing the input from the mouse or tracking its six degrees of freedom.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.data-default)
          (hsPkgs.GLUT)
          (hsPkgs.OpenGL)
          ];
        };
      exes = {
        "opengl-spacenavigator" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.data-default)
            (hsPkgs.GLUT)
            (hsPkgs.OpenGL)
            ];
          };
        };
      };
    }