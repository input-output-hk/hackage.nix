{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "chalkboard-viewer"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Andy Gill";
      maintainer = "Andy Gill <andygill@ku.edu>";
      author = "Andy Gill";
      homepage = "http://ittc.ku.edu/~andygill/chalkboard.php";
      url = "";
      synopsis = "OpenGL based viewer for chalkboard rendered images.";
      description = "Chalkboard is a Haskell hosted Domain Specific Language (DSL) for image generation and processing.\nThe basic structure is a chalk board, a two-dimensional canvas of values, typically colors.\nChalkboard provides the usual image processing functions (masking, overlaying, function mapping,\ncropping, warping, rotating) as well as a few more unusual ones.\n\nChalkboard Viewer is a portal into a dynamically updatable Board, via an OpenGL window.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."chalkboard" or ((hsPkgs.pkgs-errors).buildDepError "chalkboard"))
          (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
          (hsPkgs."GLUT" or ((hsPkgs.pkgs-errors).buildDepError "GLUT"))
          ];
        buildable = true;
        };
      };
    }