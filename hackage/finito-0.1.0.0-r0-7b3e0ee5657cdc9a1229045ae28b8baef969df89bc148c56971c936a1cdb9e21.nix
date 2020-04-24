{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "finito"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Michael Szvetits";
      maintainer = "typedbyte@qualified.name";
      author = "Michael Szvetits";
      homepage = "https://github.com/typedbyte/finito#readme";
      url = "";
      synopsis = "Constraint Solver for Finite Domains";
      description = "Please see the README on GitHub at <https://github.com/typedbyte/finito#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."numeric-domains" or ((hsPkgs.pkgs-errors).buildDepError "numeric-domains"))
          (hsPkgs."propeller" or ((hsPkgs.pkgs-errors).buildDepError "propeller"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "queens" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."finito" or ((hsPkgs.pkgs-errors).buildDepError "finito"))
            (hsPkgs."numeric-domains" or ((hsPkgs.pkgs-errors).buildDepError "numeric-domains"))
            (hsPkgs."propeller" or ((hsPkgs.pkgs-errors).buildDepError "propeller"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        "sudoku" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."finito" or ((hsPkgs.pkgs-errors).buildDepError "finito"))
            (hsPkgs."numeric-domains" or ((hsPkgs.pkgs-errors).buildDepError "numeric-domains"))
            (hsPkgs."propeller" or ((hsPkgs.pkgs-errors).buildDepError "propeller"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }