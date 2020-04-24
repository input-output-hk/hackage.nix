{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "airtable-api"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "AlphaSheets, Inc";
      maintainer = "Anand Srinivasan";
      author = "Anand Srinivasan";
      homepage = "https://github.com/ooblahman/airtable-api";
      url = "";
      synopsis = "Requesting and introspecting Tables within an Airtable project.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."wreq" or ((hsPkgs.pkgs-errors).buildDepError "wreq"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      tests = {
        "airtable-api-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."airtable-api" or ((hsPkgs.pkgs-errors).buildDepError "airtable-api"))
            ];
          buildable = true;
          };
        };
      };
    }