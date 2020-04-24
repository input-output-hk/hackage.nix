{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "HGE2D"; version = "0.1.6.1"; };
      license = "MIT";
      copyright = "Martin Buck <buckmartin@buckmartin.de>";
      maintainer = "Martin Buck <buckmartin@buckmartin.de>";
      author = "Martin Buck <buckmartin@buckmartin.de>";
      homepage = "https://github.com/I3ck/HGE2D";
      url = "";
      synopsis = "2D game engine written in Haskell";
      description = "See README and examples/ for further information";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
          (hsPkgs."GLUT" or ((hsPkgs.pkgs-errors).buildDepError "GLUT"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        buildable = true;
        };
      exes = {
        "example1" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HGE2D" or ((hsPkgs.pkgs-errors).buildDepError "HGE2D"))
            ];
          buildable = true;
          };
        "example2" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HGE2D" or ((hsPkgs.pkgs-errors).buildDepError "HGE2D"))
            ];
          buildable = true;
          };
        "example3" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HGE2D" or ((hsPkgs.pkgs-errors).buildDepError "HGE2D"))
            ];
          buildable = true;
          };
        "example4" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HGE2D" or ((hsPkgs.pkgs-errors).buildDepError "HGE2D"))
            ];
          buildable = true;
          };
        };
      };
    }