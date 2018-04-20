{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      glut = true;
      glfw = false;
      explicitbackend = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "gloss";
          version = "1.7.1.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "benl@ouroborus.net";
        author = "Ben Lippmeier";
        homepage = "http://gloss.ouroborus.net";
        url = "";
        synopsis = "Painless 2D vector graphics, animations and simulations.";
        description = "Gloss hides the pain of drawing simple vector graphics behind a nice data type and\na few display functions. Gloss uses OpenGL under the hood, but you won't need to\nworry about any of that. Get something cool on the screen in under 10 minutes.";
        buildType = "Simple";
      };
      components = {
        gloss = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.OpenGL
            hsPkgs.GLUT
            hsPkgs.bmp
          ] ++ pkgs.lib.optional _flags.glfw hsPkgs.GLFW-b;
        };
      };
    }