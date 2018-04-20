{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "GLUT";
          version = "2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Sven Panne <sven.panne@aedion.de>";
        author = "";
        homepage = "http://www.haskell.org/HOpenGL/";
        url = "";
        synopsis = "A binding for the OpenGL Utility Toolkit";
        description = "A Haskell binding for the OpenGL Utility Toolkit, a window\nsystem independent toolkit for writing OpenGL programs. For more\ninformation about the C library on which this binding is based,\nplease see: <http://www.opengl.org/resources/libraries/glut/>.";
        buildType = "Custom";
      };
      components = {
        GLUT = {
          depends  = [
            hsPkgs.base
            hsPkgs.OpenGL
          ];
        };
      };
    }