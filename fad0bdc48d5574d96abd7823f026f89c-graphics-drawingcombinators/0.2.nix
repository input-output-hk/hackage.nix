{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "graphics-drawingcombinators";
          version = "0.2";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "lrpalmer@gmail.com";
        author = "Luke Palmer";
        homepage = "";
        url = "";
        synopsis = "A functional interface to 2D drawing in OpenGL";
        description = "This module is a functional wrapper around OpenGL, so you don't\nhave to go into the deep, dark world of imperative stateful\nprogramming just to draw stuff.  It supports 2D only (for now),\nwith support drawing geometry, images, and text.";
        buildType = "Simple";
      };
      components = {
        graphics-drawingcombinators = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.SDL
            hsPkgs.SDL-ttf
            hsPkgs.SDL-image
            hsPkgs.OpenGL
          ];
        };
      };
    }