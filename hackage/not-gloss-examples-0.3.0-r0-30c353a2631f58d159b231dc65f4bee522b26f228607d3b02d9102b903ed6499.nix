{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "not-gloss-examples"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "gregmainland@gmail.com";
      author = "Greg Horn";
      homepage = "";
      url = "";
      synopsis = "examples for not-gloss";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "not-gloss-display" = {
          depends = [
            (hsPkgs."not-gloss" or ((hsPkgs.pkgs-errors).buildDepError "not-gloss"))
            (hsPkgs."spatial-math" or ((hsPkgs.pkgs-errors).buildDepError "spatial-math"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        "not-gloss-animate" = {
          depends = [
            (hsPkgs."not-gloss" or ((hsPkgs.pkgs-errors).buildDepError "not-gloss"))
            (hsPkgs."spatial-math" or ((hsPkgs.pkgs-errors).buildDepError "spatial-math"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        "not-gloss-simulate" = {
          depends = [
            (hsPkgs."not-gloss" or ((hsPkgs.pkgs-errors).buildDepError "not-gloss"))
            (hsPkgs."spatial-math" or ((hsPkgs.pkgs-errors).buildDepError "spatial-math"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        "not-gloss-game" = {
          depends = [
            (hsPkgs."not-gloss" or ((hsPkgs.pkgs-errors).buildDepError "not-gloss"))
            (hsPkgs."spatial-math" or ((hsPkgs.pkgs-errors).buildDepError "spatial-math"))
            (hsPkgs."GLUT" or ((hsPkgs.pkgs-errors).buildDepError "GLUT"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."X11" or ((hsPkgs.pkgs-errors).buildDepError "X11"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }