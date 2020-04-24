{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "snowglobe"; version = "3.0.0.2"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "claude@mathr.co.uk";
      author = "Claude Heiland-Allen";
      homepage = "http://code.mathr.co.uk/snowglobe";
      url = "";
      synopsis = "randomized fractal snowflakes demo";
      description = "@snowglobe@ generates random snowflakes using iterated\nfunction systems via OpenGL texture feedback.  The\nsnowflakes interact in a particle system.\n\nKeyboard controls:\n\n* f, F11: toggle full screen\n\n* shift-R: toggle recording PPM images to stdout\n\n* shift-S: toggle recording PGM images of each\ngenerated flake to the current working directory\n\n* any other key: quit\n\nBlog posts:\n\n* <http://mathr.co.uk/blog/2012-01-12_snowglobe.html>\n\n* <http://mathr.co.uk/blog/2014-12-19_making_seasonal_cards_with_snowglobe.html>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "snowglobe" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."gl-capture" or ((hsPkgs.pkgs-errors).buildDepError "gl-capture"))
            (hsPkgs."GLUT" or ((hsPkgs.pkgs-errors).buildDepError "GLUT"))
            (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
            (hsPkgs."OpenGLRaw" or ((hsPkgs.pkgs-errors).buildDepError "OpenGLRaw"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }