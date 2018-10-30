{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { ftgl = true; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "graphics-drawingcombinators";
        version = "1.2.0";
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.OpenGL)
          (hsPkgs.stb-image)
          (hsPkgs.bitmap-opengl)
        ] ++ (if flags.ftgl
          then [ (hsPkgs.FTGL) ]
          else [ (hsPkgs.GLUT) ]);
      };
    };
  }