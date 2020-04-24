{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "topkata"; version = "0.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Christoph Bauer <ich@christoph-bauer.net>";
      author = "Christoph Bauer";
      homepage = "";
      url = "";
      synopsis = "";
      description = "OpenGL Arcade Game";
      buildType = "Simple";
      };
    components = {
      exes = {
        "topkata" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."GLUT" or ((hsPkgs.pkgs-errors).buildDepError "GLUT"))
            (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."cairo" or ((hsPkgs.pkgs-errors).buildDepError "cairo"))
            (hsPkgs."OpenAL" or ((hsPkgs.pkgs-errors).buildDepError "OpenAL"))
            (hsPkgs."ALUT" or ((hsPkgs.pkgs-errors).buildDepError "ALUT"))
            ];
          buildable = true;
          };
        "pdflaby" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."GLUT" or ((hsPkgs.pkgs-errors).buildDepError "GLUT"))
            (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."cairo" or ((hsPkgs.pkgs-errors).buildDepError "cairo"))
            (hsPkgs."OpenAL" or ((hsPkgs.pkgs-errors).buildDepError "OpenAL"))
            (hsPkgs."ALUT" or ((hsPkgs.pkgs-errors).buildDepError "ALUT"))
            ];
          buildable = true;
          };
        };
      };
    }