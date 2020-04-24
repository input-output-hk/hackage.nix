{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tsweb"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jeremy.groven@gmail.com";
      author = "Jeremy Groven";
      homepage = "";
      url = "";
      synopsis = "An API binding Web.Spock to Database.Beam";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."beam-core" or ((hsPkgs.pkgs-errors).buildDepError "beam-core"))
          (hsPkgs."beam-postgres" or ((hsPkgs.pkgs-errors).buildDepError "beam-postgres"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."http-api-data" or ((hsPkgs.pkgs-errors).buildDepError "http-api-data"))
          (hsPkgs."hvect" or ((hsPkgs.pkgs-errors).buildDepError "hvect"))
          (hsPkgs."postgresql-simple" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-simple"))
          (hsPkgs."pretty-simple" or ((hsPkgs.pkgs-errors).buildDepError "pretty-simple"))
          (hsPkgs."reroute" or ((hsPkgs.pkgs-errors).buildDepError "reroute"))
          (hsPkgs."resource-pool" or ((hsPkgs.pkgs-errors).buildDepError "resource-pool"))
          (hsPkgs."Spock" or ((hsPkgs.pkgs-errors).buildDepError "Spock"))
          (hsPkgs."Spock-core" or ((hsPkgs.pkgs-errors).buildDepError "Spock-core"))
          (hsPkgs."stm-containers" or ((hsPkgs.pkgs-errors).buildDepError "stm-containers"))
          (hsPkgs."superrecord" or ((hsPkgs.pkgs-errors).buildDepError "superrecord"))
          (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."beam-core" or ((hsPkgs.pkgs-errors).buildDepError "beam-core"))
            (hsPkgs."beam-postgres" or ((hsPkgs.pkgs-errors).buildDepError "beam-postgres"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."http-api-data" or ((hsPkgs.pkgs-errors).buildDepError "http-api-data"))
            (hsPkgs."hvect" or ((hsPkgs.pkgs-errors).buildDepError "hvect"))
            (hsPkgs."postgresql-simple" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-simple"))
            (hsPkgs."pretty-simple" or ((hsPkgs.pkgs-errors).buildDepError "pretty-simple"))
            (hsPkgs."reroute" or ((hsPkgs.pkgs-errors).buildDepError "reroute"))
            (hsPkgs."resource-pool" or ((hsPkgs.pkgs-errors).buildDepError "resource-pool"))
            (hsPkgs."Spock" or ((hsPkgs.pkgs-errors).buildDepError "Spock"))
            (hsPkgs."Spock-core" or ((hsPkgs.pkgs-errors).buildDepError "Spock-core"))
            (hsPkgs."stm-containers" or ((hsPkgs.pkgs-errors).buildDepError "stm-containers"))
            (hsPkgs."superrecord" or ((hsPkgs.pkgs-errors).buildDepError "superrecord"))
            (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }