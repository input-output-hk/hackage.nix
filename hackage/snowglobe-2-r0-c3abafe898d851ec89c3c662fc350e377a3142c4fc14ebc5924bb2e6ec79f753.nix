{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "snowglobe"; version = "2"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "claude@mathr.co.uk";
      author = "Claude Heiland-Allen";
      homepage = "";
      url = "";
      synopsis = "randomized fractal snowflakes demo";
      description = "@snowglobe@ generates random snowflakes using iterated\nfunction systems via OpenGL texture feedback.  The\nsnowflakes interact in a particle system.\n\nKeyboard controls:\n\n* f, F11: toggle full screen\n\n* shift-R: toggle recording PPM images to stdout\n\n* any other key: quit";
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
            (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
            (hsPkgs."OpenGLRaw" or ((hsPkgs.pkgs-errors).buildDepError "OpenGLRaw"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }