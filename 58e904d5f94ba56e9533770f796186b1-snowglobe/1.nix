{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "snowglobe";
          version = "1";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "claudiusmaximus@goto10.org";
        author = "Claude Heiland-Allen";
        homepage = "";
        url = "";
        synopsis = "randomized fractal snowflakes demo";
        description = "@snowglobe@ generates random snowflakes using iterated\nfunction systems via OpenGL texture feedback.  The\nsnowflakes interact in a particle system.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "snowglobe" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.random
              hsPkgs.GLUT
              hsPkgs.OpenGLRaw
              hsPkgs.hmatrix
            ];
          };
        };
      };
    }