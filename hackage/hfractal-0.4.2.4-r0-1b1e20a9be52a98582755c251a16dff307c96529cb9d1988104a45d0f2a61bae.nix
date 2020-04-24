{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "hfractal"; version = "0.4.2.4"; };
      license = "BSD-3-Clause";
      copyright = "2009-2011 Chris Holdsworth";
      maintainer = "Chris Holdsworth <chrisholdsworth@gmail.com>";
      author = "Chris Holdsworth <chrisholdsworth@gmail.com>";
      homepage = "http://github.com/cmh/Hfractal";
      url = "";
      synopsis = "OpenGL fractal renderer";
      description = "An OpenGL fractal browser with multicore support and the capability to output high quality png images.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hfractal" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."gd" or ((hsPkgs.pkgs-errors).buildDepError "gd"))
            (hsPkgs."data-accessor" or ((hsPkgs.pkgs-errors).buildDepError "data-accessor"))
            (hsPkgs."data-accessor-template" or ((hsPkgs.pkgs-errors).buildDepError "data-accessor-template"))
            (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
            (hsPkgs."OpenGLRaw" or ((hsPkgs.pkgs-errors).buildDepError "OpenGLRaw"))
            (hsPkgs."GLUT" or ((hsPkgs.pkgs-errors).buildDepError "GLUT"))
            (hsPkgs."colour" or ((hsPkgs.pkgs-errors).buildDepError "colour"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }