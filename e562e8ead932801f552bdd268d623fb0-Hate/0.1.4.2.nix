{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "Hate";
          version = "0.1.4.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "bananu7@o2.pl";
        author = "Bartek Banachewicz";
        homepage = "http://github.com/bananu7/Hate";
        url = "";
        synopsis = "A small 2D game framework.";
        description = "A small 2D game framework.";
        buildType = "Simple";
      };
      components = {
        "Hate" = {
          depends  = [
            hsPkgs.base
            hsPkgs.GLFW-b
            hsPkgs.GLUtil
            hsPkgs.OpenGL
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.vect
            hsPkgs.vect-opengl
            hsPkgs.vector
            hsPkgs.JuicyPixels
            hsPkgs.JuicyPixels-util
            hsPkgs.bytestring
            hsPkgs.multimap
            hsPkgs.stm
          ];
        };
        exes = {
          "sample_shapes" = {
            depends  = [
              hsPkgs.base
              hsPkgs.GLFW-b
              hsPkgs.GLUtil
              hsPkgs.OpenGL
              hsPkgs.transformers
              hsPkgs.mtl
              hsPkgs.vect
              hsPkgs.vect-opengl
              hsPkgs.vector
              hsPkgs.JuicyPixels
              hsPkgs.JuicyPixels-util
              hsPkgs.Hate
            ];
          };
          "sample_scheduler" = {
            depends  = [
              hsPkgs.base
              hsPkgs.GLFW-b
              hsPkgs.GLUtil
              hsPkgs.OpenGL
              hsPkgs.transformers
              hsPkgs.mtl
              hsPkgs.vect
              hsPkgs.vect-opengl
              hsPkgs.vector
              hsPkgs.JuicyPixels
              hsPkgs.JuicyPixels-util
              hsPkgs.Hate
              hsPkgs.lens
            ];
          };
          "sample_sprite" = {
            depends  = [
              hsPkgs.base
              hsPkgs.GLFW-b
              hsPkgs.GLUtil
              hsPkgs.OpenGL
              hsPkgs.transformers
              hsPkgs.mtl
              hsPkgs.vect
              hsPkgs.vect-opengl
              hsPkgs.vector
              hsPkgs.JuicyPixels
              hsPkgs.JuicyPixels-util
              hsPkgs.Hate
              hsPkgs.random
              hsPkgs.lens
            ];
          };
          "sample_spritesheet" = {
            depends  = [
              hsPkgs.base
              hsPkgs.GLFW-b
              hsPkgs.GLUtil
              hsPkgs.OpenGL
              hsPkgs.transformers
              hsPkgs.mtl
              hsPkgs.vect
              hsPkgs.vect-opengl
              hsPkgs.vector
              hsPkgs.JuicyPixels
              hsPkgs.JuicyPixels-util
              hsPkgs.Hate
              hsPkgs.random
              hsPkgs.lens
            ];
          };
          "sample_asteroids" = {
            depends  = [
              hsPkgs.base
              hsPkgs.GLFW-b
              hsPkgs.GLUtil
              hsPkgs.OpenGL
              hsPkgs.transformers
              hsPkgs.mtl
              hsPkgs.vect
              hsPkgs.vect-opengl
              hsPkgs.vector
              hsPkgs.JuicyPixels
              hsPkgs.JuicyPixels-util
              hsPkgs.Hate
              hsPkgs.random
              hsPkgs.lens
            ];
          };
        };
      };
    }