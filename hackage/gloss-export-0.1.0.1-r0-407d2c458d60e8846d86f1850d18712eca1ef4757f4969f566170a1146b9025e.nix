{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "gloss-export"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "timo-a@gmx.ch";
      author = "Timo A";
      homepage = "https://gitlab.com/timo-a/gloss-export#readme";
      url = "";
      synopsis = "Export Gloss pictures to png, bmp, tga, tiff, gif and juicy-pixels-image";
      description = "Please see the README on GitLab at <https://gitlab.com/timo-a/gloss-export#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."gloss-rendering" or ((hsPkgs.pkgs-errors).buildDepError "gloss-rendering"))
          (hsPkgs."GLFW-b" or ((hsPkgs.pkgs-errors).buildDepError "GLFW-b"))
          (hsPkgs."OpenGLRaw" or ((hsPkgs.pkgs-errors).buildDepError "OpenGLRaw"))
          (hsPkgs."JuicyPixels" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."GLUT" or ((hsPkgs.pkgs-errors).buildDepError "GLUT"))
          ];
        buildable = true;
        };
      exes = {
        "gloss-export-exe" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            (hsPkgs."gloss-export" or ((hsPkgs.pkgs-errors).buildDepError "gloss-export"))
            ];
          buildable = true;
          };
        };
      tests = {
        "gloss-export-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            (hsPkgs."gloss-export" or ((hsPkgs.pkgs-errors).buildDepError "gloss-export"))
            (hsPkgs."JuicyPixels" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels"))
            ];
          buildable = true;
          };
        };
      };
    }