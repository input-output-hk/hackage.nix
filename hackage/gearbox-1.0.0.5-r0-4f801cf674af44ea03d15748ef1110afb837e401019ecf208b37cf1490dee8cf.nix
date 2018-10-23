{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "gearbox";
        version = "1.0.0.5";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "claude@mathr.co.uk";
      author = "Claude Heiland-Allen";
      homepage = "https://code.mathr.co.uk/gearbox";
      url = "";
      synopsis = "zooming rotating fractal gears graphics demo";
      description = "OpenGL gearbox iterated function system.  Usage:\n@gearbox quality@ where quality is an integer between\n6 and 14 (default 9).  @f@ toggles full screen, any\nother key to quit.  Shaders generate a gear shape\nand hue rotate succesive copies via texture feedback.\n\nBlog post:\n\n* <https://mathr.co.uk/blog/2012-01-12_gearbox.html>";
      buildType = "Simple";
    };
    components = {
      exes = {
        "gearbox" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
            (hsPkgs.OpenGLRaw)
            (hsPkgs.Vec)
          ];
        };
      };
    };
  }