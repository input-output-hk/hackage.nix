{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      ftgl = true;
      examples = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "graphics-drawingcombinators";
          version = "1.5.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "lrpalmer@gmail.com";
        author = "Luke Palmer";
        homepage = "http://github.com/luqui/graphics-drawingcombinators";
        url = "";
        synopsis = "A functional interface to 2D drawing in OpenGL";
        description = "This module is a functional wrapper around OpenGL, so you don't\nhave to go into the deep, dark world of imperative stateful\nprogramming just to draw stuff.  It supports 2D only (for now),\nwith support drawing geometry, images, and text.";
        buildType = "Simple";
      };
      components = {
        graphics-drawingcombinators = {
          depends  = [
            hsPkgs.base
            hsPkgs.OpenGL
            hsPkgs.stb-image
            hsPkgs.bitmap
            hsPkgs.bitmap-opengl
          ] ++ (if _flags.ftgl
            then [ hsPkgs.FTGL ]
            else [ hsPkgs.GLUT ]);
        };
        exes = {
          example = {
            depends  = optionals (!(!_flags.examples)) [
              hsPkgs.base
              hsPkgs.GLFW-b
              hsPkgs.OpenGL
              hsPkgs.graphics-drawingcombinators
            ];
          };
        };
      };
    }