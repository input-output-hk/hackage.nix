{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "obdd"; version = "0.4.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Johannes Waldmann";
      author = "Johannes Waldmann";
      homepage = "https://github.com/jwaldmann/haskell-obdd";
      url = "";
      synopsis = "Ordered Reduced Binary Decision Diagrams";
      description = "Construct, combine and query OBDDs;\nan efficient representation for formulas in propositional logic";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          ];
        buildable = true;
        };
      tests = {
        "obdd-placement" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."obdd" or ((hsPkgs.pkgs-errors).buildDepError "obdd"))
            ];
          buildable = true;
          };
        "obdd-queens" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."obdd" or ((hsPkgs.pkgs-errors).buildDepError "obdd"))
            ];
          buildable = true;
          };
        "obdd-queens2" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."obdd" or ((hsPkgs.pkgs-errors).buildDepError "obdd"))
            ];
          buildable = true;
          };
        "obdd-sort" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."obdd" or ((hsPkgs.pkgs-errors).buildDepError "obdd"))
            ];
          buildable = true;
          };
        };
      };
    }