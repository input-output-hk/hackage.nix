{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "elerea-examples"; version = "2.9.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009-2012, Patai Gergely";
      maintainer = "Patai Gergely (patai@iit.bme.hu)";
      author = "Patai Gergely";
      homepage = "";
      url = "";
      synopsis = "Example applications for Elerea";
      description = "Example applications for Elerea. They are factored out into their\nown package so as to avoid unnecessary dependencies in the\nlibrary. Check out the @doc@ directory for the colourful literate\nsources.\n\nThe programs included are the following:\n\n* bounce: an example for creating dynamic collections of signals;\nleft click to create balls, drag existing balls with left button\nto propel them and drag with right to select balls for deletion\n(upon release);\n\n* chase: a minimal example that demonstrates reactivity and mutually\nrecursive signals;\n\n* breakout: a not too fancy breakout clone; you can simply use the\nmouse to move the paddle.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "elerea-bounce" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."elerea" or ((hsPkgs.pkgs-errors).buildDepError "elerea"))
            (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
            (hsPkgs."GLFW" or ((hsPkgs.pkgs-errors).buildDepError "GLFW"))
            ];
          buildable = true;
          };
        "elerea-breakout" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."elerea" or ((hsPkgs.pkgs-errors).buildDepError "elerea"))
            (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
            (hsPkgs."GLFW" or ((hsPkgs.pkgs-errors).buildDepError "GLFW"))
            ];
          buildable = true;
          };
        "elerea-chase" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."elerea" or ((hsPkgs.pkgs-errors).buildDepError "elerea"))
            (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
            (hsPkgs."GLFW" or ((hsPkgs.pkgs-errors).buildDepError "GLFW"))
            ];
          buildable = true;
          };
        };
      };
    }