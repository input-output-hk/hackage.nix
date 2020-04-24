{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "permutations"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 M Farkas-Dyck";
      maintainer = "None";
      author = "M Farkas-Dyck";
      homepage = "";
      url = "";
      synopsis = "Permutations of finite sets";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Fin" or ((hsPkgs.pkgs-errors).buildDepError "Fin"))
          (hsPkgs."alg" or ((hsPkgs.pkgs-errors).buildDepError "alg"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or ((hsPkgs.pkgs-errors).buildDepError "base-unicode-symbols"))
          (hsPkgs."natural-induction" or ((hsPkgs.pkgs-errors).buildDepError "natural-induction"))
          (hsPkgs."peano" or ((hsPkgs.pkgs-errors).buildDepError "peano"))
          (hsPkgs."universe-base" or ((hsPkgs.pkgs-errors).buildDepError "universe-base"))
          (hsPkgs."util" or ((hsPkgs.pkgs-errors).buildDepError "util"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."Fin" or ((hsPkgs.pkgs-errors).buildDepError "Fin"))
            (hsPkgs."alg" or ((hsPkgs.pkgs-errors).buildDepError "alg"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."natural-induction" or ((hsPkgs.pkgs-errors).buildDepError "natural-induction"))
            (hsPkgs."peano" or ((hsPkgs.pkgs-errors).buildDepError "peano"))
            (hsPkgs."smallcheck" or ((hsPkgs.pkgs-errors).buildDepError "smallcheck"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-smallcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-smallcheck"))
            (hsPkgs."universe-base" or ((hsPkgs.pkgs-errors).buildDepError "universe-base"))
            (hsPkgs."permutations" or ((hsPkgs.pkgs-errors).buildDepError "permutations"))
            ];
          buildable = true;
          };
        };
      };
    }