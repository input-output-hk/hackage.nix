{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "gsmenu"; version = "3.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "athas@sigkill.dk";
      author = "Troels Henriksen";
      homepage = "http://sigkill.dk/programs/gsmenu";
      url = "";
      synopsis = "A visual generic menu";
      description = "Grid-oriented element selection inspired by XMonadContrib's GridSelect.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "gsmenu" = {
          depends = [
            (hsPkgs."X11" or ((hsPkgs.pkgs-errors).buildDepError "X11"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."sindre" or ((hsPkgs.pkgs-errors).buildDepError "sindre"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."permute" or ((hsPkgs.pkgs-errors).buildDepError "permute"))
            ];
          buildable = true;
          };
        };
      };
    }