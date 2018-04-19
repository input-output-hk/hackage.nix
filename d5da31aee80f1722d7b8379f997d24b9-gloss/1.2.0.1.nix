{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "gloss";
          version = "1.2.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "benl@ouroborus.net";
        author = "Ben Lippmeier";
        homepage = "http://trac.haskell.org/gloss";
        url = "";
        synopsis = "Painless 2D vector graphics, animations and simulations.";
        description = "Gloss hides the pain of drawing simple vector graphics behind a nice data type and\na few display functions. Gloss uses OpenGL and GLUT under the hood, but you won't\nhave to worry about any of that. Get something cool on the screen in under 10 minutes.";
        buildType = "Simple";
      };
      components = {
        gloss = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
            hsPkgs.containers
            hsPkgs.OpenGL
            hsPkgs.GLUT
          ];
        };
      };
    }