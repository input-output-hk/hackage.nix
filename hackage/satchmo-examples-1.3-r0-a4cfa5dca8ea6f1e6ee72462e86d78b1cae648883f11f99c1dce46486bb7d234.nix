{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "satchmo-examples"; version = "1.3"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Johannes Waldmann";
      author = "Johannes Waldmann";
      homepage = "http://dfa.imn.htwk-leipzig.de/satchmo/";
      url = "";
      synopsis = "examples that show how to use satchmo";
      description = "examples that show how to use satchmo";
      buildType = "Simple";
      };
    components = {
      exes = {
        "Factor" = {
          depends = [
            (hsPkgs."satchmo" or ((hsPkgs.pkgs-errors).buildDepError "satchmo"))
            (hsPkgs."satchmo-minisat" or ((hsPkgs.pkgs-errors).buildDepError "satchmo-minisat"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            ];
          buildable = true;
          };
        "HC" = {
          depends = [
            (hsPkgs."satchmo" or ((hsPkgs.pkgs-errors).buildDepError "satchmo"))
            (hsPkgs."satchmo-minisat" or ((hsPkgs.pkgs-errors).buildDepError "satchmo-minisat"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            ];
          buildable = true;
          };
        "VC" = {
          depends = [
            (hsPkgs."satchmo" or ((hsPkgs.pkgs-errors).buildDepError "satchmo"))
            (hsPkgs."satchmo-funsat" or ((hsPkgs.pkgs-errors).buildDepError "satchmo-funsat"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            ];
          buildable = true;
          };
        };
      };
    }