{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "gearbox"; version = "1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "claudiusmaximus@goto10.org";
      author = "Claude Heiland-Allen";
      homepage = "";
      url = "";
      synopsis = "zooming rotating fractal gears graphics demo";
      description = "OpenGL gearbox iterated function system.  Usage:\n@gearbox quality@ where quality is an integer between\n6 and 14 (default 9).  Shaders generate a gear shape\nand hue rotate succesive copies via texture feedback.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "gearbox" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
            (hsPkgs.OpenGLRaw)
            (hsPkgs.Vec)
            (hsPkgs.Vec-OpenGLRaw)
            ];
          };
        };
      };
    }