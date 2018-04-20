{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "gearbox";
          version = "1.0.0.1";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "claude@mathr.co.uk";
        author = "Claude Heiland-Allen";
        homepage = "";
        url = "";
        synopsis = "zooming rotating fractal gears graphics demo";
        description = "OpenGL gearbox iterated function system.  Usage:\n@gearbox quality@ where quality is an integer between\n6 and 14 (default 9).  Shaders generate a gear shape\nand hue rotate succesive copies via texture feedback.";
        buildType = "Simple";
      };
      components = {
        exes = {
          gearbox = {
            depends  = [
              hsPkgs.base
              hsPkgs.GLUT
              hsPkgs.OpenGLRaw
              hsPkgs.Vec
              hsPkgs.Vec-OpenGLRaw
            ];
          };
        };
      };
    }