{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "postgresql-simple-url";
        version = "0.2.1.0";
      };
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
          (hsPkgs.base)
          (hsPkgs.split)
          (hsPkgs.network-uri)
          (hsPkgs.postgresql-simple)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.postgresql-simple)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.postgresql-simple-url)
          ];
        };
      };
    };
  }