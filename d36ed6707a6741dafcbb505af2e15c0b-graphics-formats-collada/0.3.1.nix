{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "graphics-formats-collada";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "lrpalmer@gmail.com";
        author = "Luke Palmer";
        homepage = "http://github.com/luqui/collada";
        url = "";
        synopsis = "Load 3D geometry in the COLLADA format";
        description = "Should be able to load anything that Google SketchUp produces --\nother than that, all bets are off.";
        buildType = "Simple";
      };
      components = {
        graphics-formats-collada = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.hxt
            hsPkgs.OpenGL
            hsPkgs.stb-image
            hsPkgs.bitmap-opengl
          ];
        };
      };
    }