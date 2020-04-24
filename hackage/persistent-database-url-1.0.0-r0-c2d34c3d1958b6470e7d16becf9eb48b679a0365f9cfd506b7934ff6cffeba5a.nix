{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "persistent-database-url"; version = "1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Joe Ferris <jferris@thoughtbot.com>";
      author = "Joe Ferris <jferris@thoughtbot.com>";
      homepage = "";
      url = "";
      synopsis = "Parse DATABASE_URL into configuration types for Persistent";
      description = "Converts the parameters parsed from a database url to the concrete\nconfiguration types required by persistent.\n\nCurrently, only persistent-postgresql's PostgresConf is provided.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."persistent-postgresql" or ((hsPkgs.pkgs-errors).buildDepError "persistent-postgresql"))
          (hsPkgs."uri-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "uri-bytestring"))
          (hsPkgs."fail" or ((hsPkgs.pkgs-errors).buildDepError "fail"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."persistent-database-url" or ((hsPkgs.pkgs-errors).buildDepError "persistent-database-url"))
            (hsPkgs."persistent-postgresql" or ((hsPkgs.pkgs-errors).buildDepError "persistent-postgresql"))
            ];
          buildable = true;
          };
        };
      };
    }