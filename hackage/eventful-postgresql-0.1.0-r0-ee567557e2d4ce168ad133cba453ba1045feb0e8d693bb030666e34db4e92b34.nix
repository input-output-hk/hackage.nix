{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "eventful-postgresql"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "David Reaver";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Postgres implementations for eventful";
      description = "Postgres implementations for eventful";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."eventful-core" or ((hsPkgs.pkgs-errors).buildDepError "eventful-core"))
          (hsPkgs."eventful-sql-common" or ((hsPkgs.pkgs-errors).buildDepError "eventful-sql-common"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."persistent" or ((hsPkgs.pkgs-errors).buildDepError "persistent"))
          (hsPkgs."persistent-postgresql" or ((hsPkgs.pkgs-errors).buildDepError "persistent-postgresql"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."eventful-core" or ((hsPkgs.pkgs-errors).buildDepError "eventful-core"))
            (hsPkgs."eventful-sql-common" or ((hsPkgs.pkgs-errors).buildDepError "eventful-sql-common"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."persistent" or ((hsPkgs.pkgs-errors).buildDepError "persistent"))
            (hsPkgs."persistent-postgresql" or ((hsPkgs.pkgs-errors).buildDepError "persistent-postgresql"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."eventful-test-helpers" or ((hsPkgs.pkgs-errors).buildDepError "eventful-test-helpers"))
            ];
          buildable = true;
          };
        "style" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."eventful-core" or ((hsPkgs.pkgs-errors).buildDepError "eventful-core"))
            (hsPkgs."eventful-sql-common" or ((hsPkgs.pkgs-errors).buildDepError "eventful-sql-common"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."persistent" or ((hsPkgs.pkgs-errors).buildDepError "persistent"))
            (hsPkgs."persistent-postgresql" or ((hsPkgs.pkgs-errors).buildDepError "persistent-postgresql"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."hlint" or ((hsPkgs.pkgs-errors).buildDepError "hlint"))
            ];
          buildable = true;
          };
        };
      };
    }