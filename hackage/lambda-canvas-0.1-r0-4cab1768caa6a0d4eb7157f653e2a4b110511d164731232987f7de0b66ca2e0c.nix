{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "lambda-canvas"; version = "0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Dimitry Solovyov <dimituri@gmail.com>";
      author = "Dimitry Solovyov <dimituri@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Educational drawing canvas for FP explorers.";
      description = "This package is an experimental teaching tool that\nprovides the foundation for presenting functional\nidioms with graphical metaphors. The OpenGL canvas\nboilerplate is abstracted away to a simple interface,\nwhich allows to focus on program logic instead of the\ngraphics API. It's also arguably fun.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."GLUT" or ((hsPkgs.pkgs-errors).buildDepError "GLUT"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }