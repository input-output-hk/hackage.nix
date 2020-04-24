{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { ftgl = true; examples = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "graphics-drawingcombinators"; version = "1.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "lrpalmer@gmail.com";
      author = "Luke Palmer";
      homepage = "http://github.com/luqui/graphics-drawingcombinators";
      url = "";
      synopsis = "A functional interface to 2D drawing in OpenGL";
      description = "This module is a functional wrapper around OpenGL, so you don't\nhave to go into the deep, dark world of imperative stateful\nprogramming just to draw stuff.  It supports 2D only (for now),\nwith support drawing geometry, images, and text.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
          (hsPkgs."stb-image" or ((hsPkgs.pkgs-errors).buildDepError "stb-image"))
          (hsPkgs."bitmap" or ((hsPkgs.pkgs-errors).buildDepError "bitmap"))
          ] ++ (if flags.ftgl
          then [
            (hsPkgs."FTGL" or ((hsPkgs.pkgs-errors).buildDepError "FTGL"))
            ]
          else [
            (hsPkgs."GLUT" or ((hsPkgs.pkgs-errors).buildDepError "GLUT"))
            ]);
        buildable = true;
        };
      exes = {
        "example" = {
          depends = (pkgs.lib).optionals (!(!flags.examples)) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."GLFW-b" or ((hsPkgs.pkgs-errors).buildDepError "GLFW-b"))
            (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
            (hsPkgs."graphics-drawingcombinators" or ((hsPkgs.pkgs-errors).buildDepError "graphics-drawingcombinators"))
            ];
          buildable = if !flags.examples then false else true;
          };
        };
      };
    }