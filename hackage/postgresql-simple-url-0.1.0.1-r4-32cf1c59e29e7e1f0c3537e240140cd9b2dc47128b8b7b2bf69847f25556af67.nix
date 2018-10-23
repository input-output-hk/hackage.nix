{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "postgresql-simple-url";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "Copyright © 2014 Futurice OY, Oleg Grenrus";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus";
      homepage = "https://github.com/futurice/postgresql-simple-url";
      url = "";
      synopsis = "Parse postgres:// url into ConnectInfo";
      description = "The 'Database.PostgreSQL.Simple.URL' module in this package exports\nt2o helper functions 'parseDatabaseUrl' and 'urlToConnectInfo'.";
      buildType = "Simple";
    };
    components = {
      "postgresql-simple-url" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.split)
          (hsPkgs.network-uri)
          (hsPkgs.postgresql-simple)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.postgresql-simple)
            (hsPkgs.postgresql-simple-url)
          ];
        };
      };
    };
  }