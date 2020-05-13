{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "postgresql-simple-url"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "Copyright © 2014 Futurice OY, Oleg Grenrus";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus";
      homepage = "https://github.com/futurice/postgresql-simple-url";
      url = "";
      synopsis = "Parse postgres:// url into ConnectInfo";
      description = "The 'Database.PostgreSQL.Simple.URL' module in this package exports\ntwo helper functions 'parseDatabaseUrl' and 'urlToConnectInfo'.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
            (hsPkgs."postgresql-simple-url" or (errorHandler.buildDepError "postgresql-simple-url"))
            ];
          buildable = true;
          };
        };
      };
    }