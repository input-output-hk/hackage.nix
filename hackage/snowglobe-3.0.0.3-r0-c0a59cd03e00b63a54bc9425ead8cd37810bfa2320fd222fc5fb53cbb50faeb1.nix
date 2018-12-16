{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "snowglobe";
        version = "3.0.0.3";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "claude@mathr.co.uk";
      author = "Claude Heiland-Allen";
      homepage = "https://code.mathr.co.uk/snowglobe";
      url = "";
      synopsis = "randomized fractal snowflakes demo";
      description = "@snowglobe@ generates random snowflakes using iterated\nfunction systems via OpenGL texture feedback.  The\nsnowflakes interact in a particle system.\n\nKeyboard controls:\n\n* f, F11: toggle full screen\n\n* shift-R: toggle recording PPM images to stdout\n\n* shift-S: toggle recording PGM images of each\ngenerated flake to the current working directory\n\n* any other key: quit\n\nBlog posts:\n\n* <https://mathr.co.uk/blog/2012-01-12_snowglobe.html>\n\n* <https://mathr.co.uk/blog/2014-12-19_making_seasonal_cards_with_snowglobe.html>";
      buildType = "Simple";
    };
    components = {
      exes = {
        "snowglobe" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.gl-capture)
            (hsPkgs.GLUT)
            (hsPkgs.OpenGL)
            (hsPkgs.OpenGLRaw)
            (hsPkgs.random)
          ];
        };
      };
    };
  }