{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "postgresql-simple-url"; version = "0.2.1.0"; };
      license = "MIT";
      copyright = "Copyright © 2014-2018 Futurice OY, Oleg Grenrus";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus";
      homepage = "https://github.com/futurice/postgresql-simple-url";
      url = "";
      synopsis = "Parse postgres:// url into ConnectInfo";
      description = "The 'Database.PostgreSQL.Simple.URL' module in this package exports\ntwo helper functions 'parseDatabaseUrl' and 'urlToConnectInfo' to\nconstruct 'ConnectInfo' from URI (or string).\n\n@\n>>> parseDatabaseUrl \"postgres://foo:bar@example.com:2345/database\"\nJust (ConnectInfo \"example.com\" 2345 \"foo\" \"bar\" \"database\")\n@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
          (hsPkgs."postgresql-simple" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-simple"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."postgresql-simple" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-simple"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."postgresql-simple-url" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-simple-url"))
            ];
          buildable = true;
          };
        };
      };
    }