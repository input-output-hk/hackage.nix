{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "postgres-embedded"; version = "0.1.6"; };
      license = "MIT";
      copyright = "2017 Ilya Murzinov";
      maintainer = "Ilya Murzinov <murz42@gmail.com>";
      author = "Ilya Murzinov";
      homepage = "https://github.com/ilya-murzinov/postgres-embedded";
      url = "";
      synopsis = "Library for easily running embedded PostgreSQL server for tests";
      description = "Library for easily running embedded PostgreSQL server for tests";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."shell-conduit" or ((hsPkgs.pkgs-errors).buildDepError "shell-conduit"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          ];
        buildable = true;
        };
      tests = {
        "postgres-embedded-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."postgres-embedded" or ((hsPkgs.pkgs-errors).buildDepError "postgres-embedded"))
            (hsPkgs."postgresql-simple" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-simple"))
            (hsPkgs."shell-conduit" or ((hsPkgs.pkgs-errors).buildDepError "shell-conduit"))
            ];
          buildable = true;
          };
        };
      };
    }