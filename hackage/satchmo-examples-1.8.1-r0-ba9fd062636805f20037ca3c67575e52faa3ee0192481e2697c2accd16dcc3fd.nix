{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "satchmo-examples"; version = "1.8.1"; };
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
            (hsPkgs."satchmo-backends" or ((hsPkgs.pkgs-errors).buildDepError "satchmo-backends"))
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
            (hsPkgs."satchmo-backends" or ((hsPkgs.pkgs-errors).buildDepError "satchmo-backends"))
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
            (hsPkgs."satchmo-backends" or ((hsPkgs.pkgs-errors).buildDepError "satchmo-backends"))
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