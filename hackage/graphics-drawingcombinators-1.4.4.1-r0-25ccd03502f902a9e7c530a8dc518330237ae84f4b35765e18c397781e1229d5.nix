{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      ftgl = true;
      examples = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "graphics-drawingcombinators";
        version = "1.4.4.1";
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
        depends = [
          (hsPkgs.base)
          (hsPkgs.OpenGL)
          (hsPkgs.stb-image)
          (hsPkgs.bitmap)
        ] ++ (if flags.ftgl
          then [ (hsPkgs.FTGL) ]
          else [ (hsPkgs.GLUT) ]);
      };
      exes = {
        "example" = {
          depends = pkgs.lib.optionals (!(!flags.examples)) [
            (hsPkgs.base)
            (hsPkgs.GLFW-b)
            (hsPkgs.OpenGL)
            (hsPkgs.graphics-drawingcombinators)
          ];
        };
      };
    };
  }